// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leitura.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Leitura _$LeituraFromJson(Map<String, dynamic> json) {
  return _Leitura.fromJson(json);
}

/// @nodoc
mixin _$Leitura {
  String get id => throw _privateConstructorUsedError;
  String get talhaoId => throw _privateConstructorUsedError;
  DateTime get data => throw _privateConstructorUsedError;
  double get umidadeSolo => throw _privateConstructorUsedError;
  bool get pendenteSync => throw _privateConstructorUsedError;

  /// Serializes this Leitura to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Leitura
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeituraCopyWith<Leitura> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeituraCopyWith<$Res> {
  factory $LeituraCopyWith(Leitura value, $Res Function(Leitura) then) =
      _$LeituraCopyWithImpl<$Res, Leitura>;
  @useResult
  $Res call({
    String id,
    String talhaoId,
    DateTime data,
    double umidadeSolo,
    bool pendenteSync,
  });
}

/// @nodoc
class _$LeituraCopyWithImpl<$Res, $Val extends Leitura>
    implements $LeituraCopyWith<$Res> {
  _$LeituraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Leitura
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? talhaoId = null,
    Object? data = null,
    Object? umidadeSolo = null,
    Object? pendenteSync = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            talhaoId: null == talhaoId
                ? _value.talhaoId
                : talhaoId // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            umidadeSolo: null == umidadeSolo
                ? _value.umidadeSolo
                : umidadeSolo // ignore: cast_nullable_to_non_nullable
                      as double,
            pendenteSync: null == pendenteSync
                ? _value.pendenteSync
                : pendenteSync // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeituraImplCopyWith<$Res> implements $LeituraCopyWith<$Res> {
  factory _$$LeituraImplCopyWith(
    _$LeituraImpl value,
    $Res Function(_$LeituraImpl) then,
  ) = __$$LeituraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String talhaoId,
    DateTime data,
    double umidadeSolo,
    bool pendenteSync,
  });
}

/// @nodoc
class __$$LeituraImplCopyWithImpl<$Res>
    extends _$LeituraCopyWithImpl<$Res, _$LeituraImpl>
    implements _$$LeituraImplCopyWith<$Res> {
  __$$LeituraImplCopyWithImpl(
    _$LeituraImpl _value,
    $Res Function(_$LeituraImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Leitura
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? talhaoId = null,
    Object? data = null,
    Object? umidadeSolo = null,
    Object? pendenteSync = null,
  }) {
    return _then(
      _$LeituraImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        talhaoId: null == talhaoId
            ? _value.talhaoId
            : talhaoId // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        umidadeSolo: null == umidadeSolo
            ? _value.umidadeSolo
            : umidadeSolo // ignore: cast_nullable_to_non_nullable
                  as double,
        pendenteSync: null == pendenteSync
            ? _value.pendenteSync
            : pendenteSync // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeituraImpl implements _Leitura {
  const _$LeituraImpl({
    required this.id,
    required this.talhaoId,
    required this.data,
    required this.umidadeSolo,
    this.pendenteSync = false,
  });

  factory _$LeituraImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeituraImplFromJson(json);

  @override
  final String id;
  @override
  final String talhaoId;
  @override
  final DateTime data;
  @override
  final double umidadeSolo;
  @override
  @JsonKey()
  final bool pendenteSync;

  @override
  String toString() {
    return 'Leitura(id: $id, talhaoId: $talhaoId, data: $data, umidadeSolo: $umidadeSolo, pendenteSync: $pendenteSync)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeituraImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.talhaoId, talhaoId) ||
                other.talhaoId == talhaoId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.umidadeSolo, umidadeSolo) ||
                other.umidadeSolo == umidadeSolo) &&
            (identical(other.pendenteSync, pendenteSync) ||
                other.pendenteSync == pendenteSync));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, talhaoId, data, umidadeSolo, pendenteSync);

  /// Create a copy of Leitura
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeituraImplCopyWith<_$LeituraImpl> get copyWith =>
      __$$LeituraImplCopyWithImpl<_$LeituraImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeituraImplToJson(this);
  }
}

abstract class _Leitura implements Leitura {
  const factory _Leitura({
    required final String id,
    required final String talhaoId,
    required final DateTime data,
    required final double umidadeSolo,
    final bool pendenteSync,
  }) = _$LeituraImpl;

  factory _Leitura.fromJson(Map<String, dynamic> json) = _$LeituraImpl.fromJson;

  @override
  String get id;
  @override
  String get talhaoId;
  @override
  DateTime get data;
  @override
  double get umidadeSolo;
  @override
  bool get pendenteSync;

  /// Create a copy of Leitura
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeituraImplCopyWith<_$LeituraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
