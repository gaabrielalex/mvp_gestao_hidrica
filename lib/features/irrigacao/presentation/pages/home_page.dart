import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:gap/gap.dart';
import 'package:myapp/features/irrigacao/data/in_memory/irrigacao_in_memory_datasource.dart';
import 'package:myapp/features/irrigacao/presentation/controllers/leituras_controller.dart';
import 'package:myapp/features/irrigacao/presentation/controllers/recomendacao_controller.dart';
import 'package:myapp/features/irrigacao/presentation/widgets/leitura_tile.dart';
import 'package:myapp/features/irrigacao/presentation/widgets/recomendacao_card.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  String? selectedTalhaoId;

  @override
  void initState() {
    super.initState();
    // Load talhoes initially
    // This assumes a provider for talhoes exists, perhaps in the repository or a dedicated talhao controller
    // For this MVP, we'll use a placeholder and select the first talhao
    final talhoes =
        IrrigacaoInMemoryDataSource().initialTalhoes; // Placeholder access
    if (talhoes.isNotEmpty) {
      selectedTalhaoId = talhoes.first.id;
      // Load leituras for the initial talhao
      ref
          .read(leiturasControllerProvider(talhaoId: selectedTalhaoId).notifier)
          .load(talhaoId: selectedTalhaoId);
    }
  }

  @override
  Widget build(BuildContext context) {
    final leiturasState = ref.watch(
      leiturasControllerProvider(talhaoId: selectedTalhaoId),
    );
    final recomendacaoState = ref.watch(recomendacaoControllerProvider);
    // Placeholder for talhoes list, replace with actual provider later
    final talhoes = IrrigacaoInMemoryDataSource().initialTalhoes;

    return Scaffold(
      appBar: AppBar(title: const Text('Gestão Hídrica')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Talhao selection
            DropdownButtonFormField<String>(
              value: selectedTalhaoId,
              decoration: const InputDecoration(labelText: 'Talhão'),
              items: talhoes.map((talhao) {
                return DropdownMenuItem(
                  value: talhao.id,
                  child: Text(talhao.nome),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedTalhaoId = value;
                  if (selectedTalhaoId != null) {
                    ref
                        .read(
                          leiturasControllerProvider(
                            talhaoId: selectedTalhaoId,
                          ).notifier,
                        )
                        .load();
                    // Optionally clear previous recommendation when changing talhao
                    ref.read(recomendacaoControllerProvider.notifier).state =
                        const AsyncValue.data(null);
                  }
                });
              },
            ),
            const Gap(16),

            // Recommendation Card
            recomendacaoState.when(
              data: (recomendacao) {
                if (recomendacao != null) {
                  return RecomendacaoCard(recomendacao: recomendacao);
                }
                return const SizedBox.shrink();
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) =>
                  Text('Erro ao carregar recomendação: $error'),
            ),
            const Gap(8),

            // Generate Recommendation Button
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: selectedTalhaoId != null
                    ? () {
                        ref
                            .read(recomendacaoControllerProvider.notifier)
                            .gerar(selectedTalhaoId!);
                      }
                    : null,
                child: const Text('Gerar Recomendação'),
              ),
            ),
            const Gap(16),

            // Humidity Chart (Simple placeholder)
            const Text('Umidade do Solo (últimos 7 dias)'),
            const Gap(8),
            SizedBox(
              height: 150,
              child: leiturasState.when(
                data: (leituras) {
                  if (leituras.isEmpty) {
                    return const Center(
                      child: Text('Sem dados de umidade para exibir.'),
                    );
                  }
                  // Filter last 7 days data (simple approach)
                  final recentLeituras =
                      leituras
                          .where(
                            (l) => l.data.isAfter(
                              DateTime.now().subtract(const Duration(days: 7)),
                            ),
                          )
                          .toList()
                        ..sort((a, b) => a.data.compareTo(b.data));

                  if (recentLeituras.isEmpty) {
                    return const Center(
                      child: Text('Sem dados de umidade nos últimos 7 dias.'),
                    );
                  }

                  return LineChart(
                    LineChartData(
                      gridData: const FlGridData(show: false),
                      titlesData: const FlTitlesData(show: false),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: recentLeituras.asMap().entries.map((entry) {
                            return FlSpot(
                              entry.key.toDouble(),
                              entry.value.umidadeSolo,
                            );
                          }).toList(),
                          isCurved: true,
                          color: Theme.of(context).primaryColor,
                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(show: false),
                        ),
                      ],
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) =>
                    Text('Erro ao carregar gráfico: $error'),
              ),
            ),
            const Gap(16),

            const Text('Leituras Registradas'),
            const Gap(8),

            // Leituras List
            Expanded(
              child: leiturasState.when(
                data: (leituras) {
                  if (leituras.isEmpty) {
                    return const Center(
                      child: Text(
                        'Nenhuma leitura registrada para este talhão.',
                      ),
                    );
                  }
                  return ListView.builder(
                    itemCount: leituras.length,
                    itemBuilder: (context, index) {
                      final leitura = leituras[index];
                      return LeituraTile(leitura: leitura);
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) =>
                    Text('Erro ao carregar leituras: $error'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: selectedTalhaoId != null
          ? FloatingActionButton(
              onPressed: () {
                context.go('/talhao/$selectedTalhaoId/novo-registro');
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
