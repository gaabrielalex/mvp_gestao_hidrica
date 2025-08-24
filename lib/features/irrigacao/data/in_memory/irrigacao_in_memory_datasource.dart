import 'package:myapp/features/irrigacao/data/models/leitura.dart';
import 'package:myapp/features/irrigacao/data/models/talhao.dart';
import 'package:uuid/uuid.dart';
import 'dart:math';

class IrrigacaoInMemoryDataSource {
  final List<Talhao> _talhoes = [];
  final List<Leitura> _leituras = [];
  final Uuid _uuid = const Uuid();
  final Random _random = Random();

  IrrigacaoInMemoryDataSource() {
    _seedData();
  }

  void _seedData() {
    // Seed Talhoes
    final talhao1 = Talhao(id: _uuid.v4(), nome: 'Talhão A', areaHa: 10.5);
    final talhao2 = Talhao(id: _uuid.v4(), nome: 'Talhão B', areaHa: 15.0);
    final talhao3 = Talhao(id: _uuid.v4(), nome: 'Talhão C', areaHa: 7.2);
    _talhoes.addAll([talhao1, talhao2, talhao3]);

    // Seed Leituras
    final now = DateTime.now();
    for (int i = 0; i < 3; i++) {
      _leituras.add(Leitura(
        id: _uuid.v4(),
        talhaoId: talhao1.id,
        data: now.subtract(Duration(days: i)),
        umidadeSolo: _random.nextDouble() * 60 + 20, // 20-80%
        pendenteSync: false,
      ));
      _leituras.add(Leitura(
        id: _uuid.v4(),
        talhaoId: talhao2.id,
        data: now.subtract(Duration(days: i)),
        umidadeSolo: _random.nextDouble() * 50 + 30, // 30-80%
        pendenteSync: false,
      ));
      if (i < 2) {
        _leituras.add(Leitura(
          id: _uuid.v4(),
          talhaoId: talhao3.id,
          data: now.subtract(Duration(days: i)),
          umidadeSolo: _random.nextDouble() * 40 + 40, // 40-80%
          pendenteSync: false,
        ));
      }
    }
  }

  List<Talhao> listarTalhoes() {
    return List.from(_talhoes);
  }

  List<Leitura> listarLeituras({String? talhaoId}) {
    if (talhaoId == null) {
      return List.from(_leituras)..sort((a, b) => b.data.compareTo(a.data));
    }
    return List.from(_leituras
        .where((leitura) => leitura.talhaoId == talhaoId))
      ..sort((a, b) => b.data.compareTo(a.data));
  }

  Leitura criarLeitura(Leitura leitura) {
    final newLeitura = leitura.copyWith(id: leitura.id.isEmpty ? _uuid.v4() : leitura.id);
    _leituras.add(newLeitura);
    return newLeitura;
  }

  void removerLeitura(String id) {
    _leituras.removeWhere((leitura) => leitura.id == id);
  }

  // Simulate rain prediction - 50% chance of rain
  bool simularChuvaProximas24h() => _random.nextBool();
}
