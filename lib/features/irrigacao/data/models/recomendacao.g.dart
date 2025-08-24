// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recomendacao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecomendacaoIrrigacaoImpl _$$RecomendacaoIrrigacaoImplFromJson(
  Map<String, dynamic> json,
) => _$RecomendacaoIrrigacaoImpl(
  talhaoId: json['talhaoId'] as String,
  mmSugeridos: (json['mmSugeridos'] as num).toDouble(),
  motivo: json['motivo'] as String,
  geradaEm: DateTime.parse(json['geradaEm'] as String),
);

Map<String, dynamic> _$$RecomendacaoIrrigacaoImplToJson(
  _$RecomendacaoIrrigacaoImpl instance,
) => <String, dynamic>{
  'talhaoId': instance.talhaoId,
  'mmSugeridos': instance.mmSugeridos,
  'motivo': instance.motivo,
  'geradaEm': instance.geradaEm.toIso8601String(),
};
