// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeYo {
// required int id,
  int get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeYoCopyWith<ThemeYo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeYoCopyWith<$Res> {
  factory $ThemeYoCopyWith(ThemeYo value, $Res Function(ThemeYo) then) =
      _$ThemeYoCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class _$ThemeYoCopyWithImpl<$Res> implements $ThemeYoCopyWith<$Res> {
  _$ThemeYoCopyWithImpl(this._value, this._then);

  final ThemeYo _value;
  // ignore: unused_field
  final $Res Function(ThemeYo) _then;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ThemeYoCopyWith<$Res> implements $ThemeYoCopyWith<$Res> {
  factory _$$_ThemeYoCopyWith(
          _$_ThemeYo value, $Res Function(_$_ThemeYo) then) =
      __$$_ThemeYoCopyWithImpl<$Res>;
  @override
  $Res call({int number});
}

/// @nodoc
class __$$_ThemeYoCopyWithImpl<$Res> extends _$ThemeYoCopyWithImpl<$Res>
    implements _$$_ThemeYoCopyWith<$Res> {
  __$$_ThemeYoCopyWithImpl(_$_ThemeYo _value, $Res Function(_$_ThemeYo) _then)
      : super(_value, (v) => _then(v as _$_ThemeYo));

  @override
  _$_ThemeYo get _value => super._value as _$_ThemeYo;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$_ThemeYo(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ThemeYo with DiagnosticableTreeMixin implements _ThemeYo {
  _$_ThemeYo({this.number = 0});

// required int id,
  @override
  @JsonKey()
  final int number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ThemeYo(number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ThemeYo'))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeYo &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$_ThemeYoCopyWith<_$_ThemeYo> get copyWith =>
      __$$_ThemeYoCopyWithImpl<_$_ThemeYo>(this, _$identity);
}

abstract class _ThemeYo implements ThemeYo {
  factory _ThemeYo({final int number}) = _$_ThemeYo;

  @override // required int id,
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeYoCopyWith<_$_ThemeYo> get copyWith =>
      throw _privateConstructorUsedError;
}
