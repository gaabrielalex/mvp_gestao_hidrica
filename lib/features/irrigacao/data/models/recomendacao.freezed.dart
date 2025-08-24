// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recomendacao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RecomendacaoIrrigacao _$RecomendacaoIrrigacaoFromJson(
  Map<String, dynamic> json,
) {
  return _RecomendacaoIrrigacao.fromJson(json);
}

/// @nodoc
mixin _$RecomendacaoIrrigacao {
  String get talhaoId => throw _privateConstructorUsedError;
  double get mmSugeridos => throw _privateConstructorUsedError;
  String get motivo => throw _privateConstructorUsedError;
  DateTime get geradaEm => throw _privateConstructorUsedError;

  /// Serializes this RecomendacaoIrrigacao to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecomendacaoIrrigacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecomendacaoIrrigacaoCopyWith<RecomendacaoIrrigacao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecomendacaoIrrigacaoCopyWith<$Res> {
  factory $RecomendacaoIrrigacaoCopyWith(
    RecomendacaoIrrigacao value,
    $Res Function(RecomendacaoIrrigacao) then,
  ) = _$RecomendacaoIrrigacaoCopyWithImpl<$Res, RecomendacaoIrrigacao>;
  @useResult
  $Res call({
    String talhaoId,
    double mmSugeridos,
    String motivo,
    DateTime geradaEm,
  });
}

/// @nodoc
class _$RecomendacaoIrrigacaoCopyWithImpl<
  $Res,
  $Val extends RecomendacaoIrrigacao
>
    implements $RecomendacaoIrrigacaoCopyWith<$Res> {
  _$RecomendacaoIrrigacaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecomendacaoIrrigacao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? talhaoId = null,
    Object? mmSugeridos = null,
    Object? motivo = null,
    Object? geradaEm = null,
  }) {
    return _then(
      _value.copyWith(
            talhaoId: null == talhaoId
                ? _value.talhaoId
                : talhaoId // ignore: cast_nullable_to_non_nullable
                      as String,
            mmSugeridos: null == mmSugeridos
                ? _value.mmSugeridos
                : mmSugeridos // ignore: cast_nullable_to_non_nullable
                      as double,
            motivo: null == motivo
                ? _value.motivo
                : motivo // ignore: cast_nullable_to_non_nullable
                      as String,
            geradaEm: null == geradaEm
                ? _value.geradaEm
                : geradaEm // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecomendacaoIrrigacaoImplCopyWith<$Res>
    implements $RecomendacaoIrrigacaoCopyWith<$Res> {
  factory _$$RecomendacaoIrrigacaoImplCopyWith(
    _$RecomendacaoIrrigacaoImpl value,
    $Res Function(_$RecomendacaoIrrigacaoImpl) then,
  ) = __$$RecomendacaoIrrigacaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String talhaoId,
    double mmSugeridos,
    String motivo,
    DateTime geradaEm,
  });
}

/// @nodoc
class __$$RecomendacaoIrrigacaoImplCopyWithImpl<$Res>
    extends
        _$RecomendacaoIrrigacaoCopyWithImpl<$Res, _$RecomendacaoIrrigacaoImpl>
    implements _$$RecomendacaoIrrigacaoImplCopyWith<$Res> {
  __$$RecomendacaoIrrigacaoImplCopyWithImpl(
    _$RecomendacaoIrrigacaoImpl _value,
    $Res Function(_$RecomendacaoIrrigacaoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecomendacaoIrrigacao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? talhaoId = null,
    Object? mmSugeridos = null,
    Object? motivo = null,
    Object? geradaEm = null,
  }) {
    return _then(
      _$RecomendacaoIrrigacaoImpl(
        talhaoId: null == talhaoId
            ? _value.talhaoId
            : talhaoId // ignore: cast_nullable_to_non_nullable
                  as String,
        mmSugeridos: null == mmSugeridos
            ? _value.mmSugeridos
            : mmSugeridos // ignore: cast_nullable_to_non_nullable
                  as double,
        motivo: null == motivo
            ? _value.motivo
            : motivo // ignore: cast_nullable_to_non_nullable
                  as String,
        geradaEm: null == geradaEm
            ? _value.geradaEm
            : geradaEm // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecomendacaoIrrigacaoImpl implements _RecomendacaoIrrigacao {
  const _$RecomendacaoIrrigacaoImpl({
    required this.talhaoId,
    required this.mmSugeridos,
    required this.motivo,
    required this.geradaEm,
  });

  factory _$RecomendacaoIrrigacaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecomendacaoIrrigacaoImplFromJson(json);

  @override
  final String talhaoId;
  @override
  final double mmSugeridos;
  @override
  final String motivo;
  @override
  final DateTime geradaEm;

  @override
  String toString() {
    return 'RecomendacaoIrrigacao(talhaoId: $talhaoId, mmSugeridos: $mmSugeridos, motivo: $motivo, geradaEm: $geradaEm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecomendacaoIrrigacaoImpl &&
            (identical(other.talhaoId, talhaoId) ||
                other.talhaoId == talhaoId) &&
            (identical(other.mmSugeridos, mmSugeridos) ||
                other.mmSugeridos == mmSugeridos) &&
            (identical(other.motivo, motivo) || other.motivo == motivo) &&
            (identical(other.geradaEm, geradaEm) ||
                other.geradaEm == geradaEm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, talhaoId, mmSugeridos, motivo, geradaEm);

  /// Create a copy of RecomendacaoIrrigacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecomendacaoIrrigacaoImplCopyWith<_$RecomendacaoIrrigacaoImpl>
  get copyWith =>
      __$$RecomendacaoIrrigacaoImplCopyWithImpl<_$RecomendacaoIrrigacaoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RecomendacaoIrrigacaoImplToJson(this);
  }
}

abstract class _RecomendacaoIrrigacao implements RecomendacaoIrrigacao {
  const factory _RecomendacaoIrrigacao({
    required final String talhaoId,
    required final double mmSugeridos,
    required final String motivo,
    required final DateTime geradaEm,
  }) = _$RecomendacaoIrrigacaoImpl;

  factory _RecomendacaoIrrigacao.fromJson(Map<String, dynamic> json) =
      _$RecomendacaoIrrigacaoImpl.fromJson;

  @override
  String get talhaoId;
  @override
  double get mmSugeridos;
  @override
  String get motivo;
  @override
  DateTime get geradaEm;

  /// Create a copy of RecomendacaoIrrigacao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecomendacaoIrrigacaoImplCopyWith<_$RecomendacaoIrrigacaoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
