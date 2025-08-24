import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/irrigacao/data/in_memory/irrigacao_in_memory_datasource.dart';
import 'package:myapp/features/irrigacao/data/models/leitura.dart';
import 'package:myapp/features/irrigacao/data/models/recomendacao.dart';
import 'package:myapp/features/irrigacao/data/models/talhao.dart';
import 'package:myapp/features/irrigacao/domain/repositories.dart';
import 'package:myapp/features/irrigacao/domain/services.dart';
import 'package:uuid/uuid.dart';
// Import RecomendadorService
// Ensure this is imported if datasourceProvider is in this file

class IrrigacaoInMemoryRepo implements IrrigacaoRepository {
  final IrrigacaoInMemoryDataSource _dataSource;
  final RecomendadorService _recomendadorService;
  final Uuid _uuid;

  IrrigacaoInMemoryRepo(
    this._dataSource,
    this._recomendadorService,
    this._uuid,
  );

  @override
  Future<List<Talhao>> listarTalhoes() async {
    return _dataSource.listarTalhoes();
  }

  @override
  Future<List<Leitura>> listarLeituras({String? talhaoId}) async {
    if (talhaoId == null) {
      return _dataSource.listarLeituras();
    }
 return (await _dataSource.listarLeituras())
 .where((leitura) => leitura.talhaoId == talhaoId)
        .toList();
 }

  @override
  Future<Leitura> criarLeitura(Leitura leitura) async {
    final leituraToSave = leitura.copyWith(
      id: leitura.id.isEmpty ? _uuid.v4() : leitura.id,
      pendenteSync: false, // In-memory repo simulates immediate sync
    );
    _dataSource.leituras.add(leituraToSave); // Using the public getter here
    return leituraToSave;
  }

  @override
  Future<void> removerLeitura(String id) async {
    _dataSource.leituras.removeWhere((leitura) => leitura.id == id); // And here
  }

  @override
  Future<RecomendacaoIrrigacao> gerarRecomendacao(String talhaoId) async {
    final leiturasDoTalhao = await listarLeituras(talhaoId: talhaoId);
    // Simulate rain data (e.g., random or a fixed value)
    final bool simulatedRain = DateTime.now().minute % 2 == 0; // Simple simulation

 return _recomendadorService.gerarRecomendacao(
 talhaoId: talhaoId,
 leiturasRecentes: leiturasDoTalhao,
 chuvaSimuladaPrevista: simulatedRain,
    );
  }
}

final irrigacaoInMemoryDataSourceProvider = Provider<IrrigacaoInMemoryDataSource>((ref) {
  return IrrigacaoInMemoryDataSource();
});

final recomendadorServiceProvider = Provider<RecomendadorService>((ref) {
  // Provide a concrete implementation of RecomendadorService
  // For now, assuming a simple implementation exists or needs to be created
  // Replace with your actual RecomendadorService implementation
 return RecomendadorService(); // Assuming a default constructor exists
});

final uuidProvider = Provider<Uuid>((ref) {
  return const Uuid();
});

final irrigacaoRepositoryProvider = Provider<IrrigacaoRepository>((ref) {
  final dataSource = ref.read(irrigacaoInMemoryDataSourceProvider);
  final recomendadorService = ref.read(recomendadorServiceProvider);
  final uuid = ref.read(uuidProvider);
  return IrrigacaoInMemoryRepo(dataSource, recomendadorService, uuid);
});