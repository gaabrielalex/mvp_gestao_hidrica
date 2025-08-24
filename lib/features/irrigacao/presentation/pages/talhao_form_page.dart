import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TalhaoFormPage extends StatelessWidget {
  const TalhaoFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Talhão'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Nome do Talhão'),
            ),
            const Gap(16),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Área (hectares)'),
            ),
            const Gap(24),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement save logic (stretch goal)
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
