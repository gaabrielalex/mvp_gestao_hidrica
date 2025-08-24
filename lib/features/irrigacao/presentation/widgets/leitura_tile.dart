import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../data/models/leitura.dart';

class LeituraTile extends StatelessWidget {
  final Leitura leitura;

  const LeituraTile({Key? key, required this.leitura}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd/MM/yyyy HH:mm');
    return ListTile(
      title: Text('Umidade: ${leitura.umidadeSolo.toStringAsFixed(1)}%'),
      subtitle: Text('Data: ${dateFormat.format(leitura.data)}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leitura.pendenteSync)
            const Icon(
              Icons.cloud_upload_outlined,
              color: Colors.orange,
              size: 20,
            ),
          // Add more actions if needed, e.g., edit or delete icon
          // IconButton(
          //   icon: Icon(Icons.delete),
          //   onPressed: () {}, // TODO: Implement delete functionality
          // ),
        ],
      ),
    );
  }
}
