import '../data/models/leitura.dart';
import '../data/models/recomendacao.dart';
import '../data/models/talhao.dart';

abstract class IrrigacaoRepository {
  Future<List<Talhao>> listarTalhoes();

  Future<List<Leitura>> listarLeituras({String? talhaoId});

  Future<Leitura> criarLeitura(Leitura leitura);
  Future<void> removerLeitura(String id);
  Future<RecomendacaoIrrigacao> gerarRecomendacao(String talhaoId);
}
