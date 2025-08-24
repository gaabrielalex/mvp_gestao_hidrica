import 'package:riverpod/riverpod.dart';
import '../../data/models/recomendacao.dart';
// Assuming this will be the initial implementation
// Assuming Uuid is used in the repo

final recomendacaoControllerProvider =
    AsyncNotifierProvider<RecomendacaoController, RecomendacaoIrrigacao?>(
  () => RecomendacaoController(),
);

class RecomendacaoController extends AsyncNotifier<RecomendacaoIrrigacao?> {
  @override
  Future<RecomendacaoIrrigacao?> build() async {
    return null; // Initial state is no recommendation
  }

  Future<void> gerar(String talhaoId) async {
    // final repo = ref.read(irrigacaoRepositoryProvider); // Future provider
    // state = AsyncValue.data(await repo.gerarRecomendacao(talhaoId));
  }
}
