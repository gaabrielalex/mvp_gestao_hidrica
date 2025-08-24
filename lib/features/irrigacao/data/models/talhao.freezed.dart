// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'talhao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Talhao _$TalhaoFromJson(Map<String, dynamic> json) {
  return _Talhao.fromJson(json);
}

/// @nodoc
mixin _$Talhao {
  String get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  double get areaHa => throw _privateConstructorUsedError;

  /// Serializes this Talhao to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Talhao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TalhaoCopyWith<Talhao> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalhaoCopyWith<$Res> {
  factory $TalhaoCopyWith(Talhao value, $Res Function(Talhao) then) =
      _$TalhaoCopyWithImpl<$Res, Talhao>;
  @useResult
  $Res call({String id, String nome, double areaHa});
}

/// @nodoc
class _$TalhaoCopyWithImpl<$Res, $Val extends Talhao>
    implements $TalhaoCopyWith<$Res> {
  _$TalhaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Talhao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? nome = null, Object? areaHa = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            nome: null == nome
                ? _value.nome
                : nome // ignore: cast_nullable_to_non_nullable
                      as String,
            areaHa: null == areaHa
                ? _value.areaHa
                : areaHa // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TalhaoImplCopyWith<$Res> implements $TalhaoCopyWith<$Res> {
  factory _$$TalhaoImplCopyWith(
    _$TalhaoImpl value,
    $Res Function(_$TalhaoImpl) then,
  ) = __$$TalhaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nome, double areaHa});
}

/// @nodoc
class __$$TalhaoImplCopyWithImpl<$Res>
    extends _$TalhaoCopyWithImpl<$Res, _$TalhaoImpl>
    implements _$$TalhaoImplCopyWith<$Res> {
  __$$TalhaoImplCopyWithImpl(
    _$TalhaoImpl _value,
    $Res Function(_$TalhaoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Talhao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? nome = null, Object? areaHa = null}) {
    return _then(
      _$TalhaoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        nome: null == nome
            ? _value.nome
            : nome // ignore: cast_nullable_to_non_nullable
                  as String,
        areaHa: null == areaHa
            ? _value.areaHa
            : areaHa // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TalhaoImpl implements _Talhao {
  const _$TalhaoImpl({
    required this.id,
    required this.nome,
    required this.areaHa,
  });

  factory _$TalhaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TalhaoImplFromJson(json);

  @override
  final String id;
  @override
  final String nome;
  @override
  final double areaHa;

  @override
  String toString() {
    return 'Talhao(id: $id, nome: $nome, areaHa: $areaHa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TalhaoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.areaHa, areaHa) || other.areaHa == areaHa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nome, areaHa);

  /// Create a copy of Talhao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TalhaoImplCopyWith<_$TalhaoImpl> get copyWith =>
      __$$TalhaoImplCopyWithImpl<_$TalhaoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TalhaoImplToJson(this);
  }
}

abstract class _Talhao implements Talhao {
  const factory _Talhao({
    required final String id,
    required final String nome,
    required final double areaHa,
  }) = _$TalhaoImpl;

  factory _Talhao.fromJson(Map<String, dynamic> json) = _$TalhaoImpl.fromJson;

  @override
  String get id;
  @override
  String get nome;
  @override
  double get areaHa;

  /// Create a copy of Talhao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TalhaoImplCopyWith<_$TalhaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
