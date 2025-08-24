import 'package:myapp/features/irrigacao/data/in_memory/irrigacao_in_memory_datasource.dart';
import 'package:myapp/features/irrigacao/data/models/leitura.dart';
import 'package:myapp/features/irrigacao/data/models/recomendacao.dart';
import 'package:myapp/features/irrigacao/data/models/talhao.dart';
import 'package:myapp/features/irrigacao/domain/repositories.dart';
import 'package:myapp/features/irrigacao/domain/services.dart';
import 'package:uuid/uuid.dart';

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
      return _dataSource.leituras;
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
    _dataSource.leituras.add(leituraToSave);
    return leituraToSave;
  }

  @override
  Future<void> removerLeitura(String id) async {
    _dataSource.leituras.removeWhere((leitura) => leitura.id == id);
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
