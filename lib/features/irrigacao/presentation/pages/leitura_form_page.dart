import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/errors/app_exception.dart';
import '../controllers/leituras_controller.dart';

class LeituraFormPage extends ConsumerStatefulWidget {
  final String talhaoId;

  const LeituraFormPage({Key? key, required this.talhaoId}) : super(key: key);

  @override
  ConsumerState<LeituraFormPage> createState() => _LeituraFormPageState();
}

class _LeituraFormPageState extends ConsumerState<LeituraFormPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _umidadeController = TextEditingController();

  @override
  void dispose() {
    _umidadeController.dispose();
    super.dispose();
  }

  Future<void> _saveLeitura() async {
    if (_formKey.currentState!.validate()) {
      final umidade = double.parse(_umidadeController.text);
      try {
        await ref
            .read(
              leiturasControllerProvider(talhaoId: widget.talhaoId).notifier,
            )
            .adicionarLeitura(widget.talhaoId, umidade);
        if (mounted) {
          context.go('/');
        }
      } on AppException catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Erro ao salvar leitura: ${e.message}')),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Erro inesperado ao salvar leitura.')),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Novo Registro de Umidade')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _umidadeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Umidade do Solo (%)',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a umidade.';
                  }
                  final umidade = double.tryParse(value);
                  if (umidade == null || umidade < 0 || umidade > 100) {
                    return 'A umidade deve ser entre 0 e 100.';
                  }
                  return null;
                },
              ),
              const Gap(24),
              ElevatedButton(
                onPressed: _saveLeitura,
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
