import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../irrigacao/data/models/leitura.dart';
import '../../../irrigacao/domain/repositories.dart';
import '../../../../core/errors/app_exception.dart';

part 'leituras_controller.g.dart';

@riverpod
class LeiturasController extends _$LeiturasController {
  @override
  FutureOr<List<Leitura>> build({String? talhaoId}) async {
    // Initial load based on optional talhaoId
    return _loadLeituras(talhaoId: talhaoId);
  }

  Future<List<Leitura>> _loadLeituras({String? talhaoId}) async {
    final irrigacaoRepository = ref.read(irrigacaoRepositoryProvider);
    return irrigacaoRepository.listarLeituras(talhaoId: talhaoId);
  }

  Future<void> load({String? talhaoId}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _loadLeituras(talhaoId: talhaoId));
  }

  Future<void> adicionarLeitura(String talhaoId, double umidade) async {
    if (umidade < 0 || umidade > 100) {
      throw AppException('Umidade do solo deve estar entre 0 e 100.');
    }

    state = const AsyncValue.loading();
    try {
      final irrigacaoRepository = ref.read(irrigacaoRepositoryProvider);
      final novaLeitura = Leitura(
        id: '', // Repository will generate
        talhaoId: talhaoId,
        data: DateTime.now(),
        umidadeSolo: umidade,
        pendenteSync: true, // Initially pending sync
      );
      await irrigacaoRepository.criarLeitura(novaLeitura);
      // Reload leituras to update the list
      state = await AsyncValue.guard(() => _loadLeituras(talhaoId: this.talhaoId));
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> removerLeitura(String id) async {
    state = const AsyncValue.loading();
    try {
      final irrigacaoRepository = ref.read(irrigacaoRepositoryProvider);
      await irrigacaoRepository.removerLeitura(id);
      // Reload leituras to update the list
      state = await AsyncValue.guard(() => _loadLeituras(talhaoId: this.talhaoId));
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  // In-memory simulation of synchronization
  Future<void> sincronizar() async {
    if (state.hasValue) {
      state = AsyncValue.data(state.value!.map((l) => l.copyWith(pendenteSync: false)).toList());
    }
  }
}
