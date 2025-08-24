import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:myapp/features/irrigacao/data/models/recomendacao.dart';

class RecomendacaoCard extends ConsumerWidget {
  final RecomendacaoIrrigacao recomendacao;

  const RecomendacaoCard({Key? key, required this.recomendacao})
    : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateFormat = DateFormat('dd/MM/yyyy HH:mm');

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recomendação de Irrigação',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Gap(8),
            Text(
              'MM Sugeridos: ${recomendacao.mmSugeridos.toStringAsFixed(1)}',
            ),
            Text('Motivo: ${recomendacao.motivo}'),
            Text('Gerada em: ${dateFormat.format(recomendacao.geradaEm)}'),
          ],
        ),
      ),
    );
  }
}
