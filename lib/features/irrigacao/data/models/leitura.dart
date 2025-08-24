import 'package:freezed_annotation/freezed_annotation.dart';

part 'leitura.freezed.dart';
part 'leitura.g.dart';

@freezed
class Leitura with _$Leitura {
  const factory Leitura({
    required String id,
    required String talhaoId,
    required DateTime data,
    required double umidadeSolo,
    @Default(false) bool pendenteSync,
  }) = _Leitura;

  factory Leitura.fromJson(Map<String, dynamic> json) => _$LeituraFromJson(json);
}
