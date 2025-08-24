import 'package:freezed_annotation/freezed_annotation.dart';

part 'talhao.freezed.dart';
part 'talhao.g.dart';

@freezed
class Talhao with _$Talhao {
  const factory Talhao({
    required String id,
    required String nome,
    required double areaHa,
  }) = _Talhao;

  factory Talhao.fromJson(Map<String, dynamic> json) => _$TalhaoFromJson(json);
}
