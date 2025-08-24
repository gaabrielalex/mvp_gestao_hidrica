import 'package:freezed_annotation/freezed_annotation.dart';

part 'recomendacao.freezed.dart';
part 'recomendacao.g.dart';

@freezed
class RecomendacaoIrrigacao with _$RecomendacaoIrrigacao {
  const factory RecomendacaoIrrigacao({
    required String talhaoId,
    required double mmSugeridos,
    required String motivo,
    required DateTime geradaEm,
  }) = _RecomendacaoIrrigacao;

  factory RecomendacaoIrrigacao.fromJson(Map<String, dynamic> json) =>
      _$RecomendacaoIrrigacaoFromJson(json);
}
