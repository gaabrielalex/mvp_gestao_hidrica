// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talhao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TalhaoImpl _$$TalhaoImplFromJson(Map<String, dynamic> json) => _$TalhaoImpl(
  id: json['id'] as String,
  nome: json['nome'] as String,
  areaHa: (json['areaHa'] as num).toDouble(),
);

Map<String, dynamic> _$$TalhaoImplToJson(_$TalhaoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'areaHa': instance.areaHa,
    };
