// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leitura.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeituraImpl _$$LeituraImplFromJson(Map<String, dynamic> json) =>
    _$LeituraImpl(
      id: json['id'] as String,
      talhaoId: json['talhaoId'] as String,
      data: DateTime.parse(json['data'] as String),
      umidadeSolo: (json['umidadeSolo'] as num).toDouble(),
      pendenteSync: json['pendenteSync'] as bool? ?? false,
    );

Map<String, dynamic> _$$LeituraImplToJson(_$LeituraImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'talhaoId': instance.talhaoId,
      'data': instance.data.toIso8601String(),
      'umidadeSolo': instance.umidadeSolo,
      'pendenteSync': instance.pendenteSync,
    };
