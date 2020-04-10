// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'breath_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BreathTypeTearOff {
  const _$BreathTypeTearOff();

  BreathTypeInhale inhale(double v) {
    return BreathTypeInhale(
      v,
    );
  }

  BreathTypeExhale exhale(double v) {
    return BreathTypeExhale(
      v,
    );
  }
}

// ignore: unused_element
const $BreathType = _$BreathTypeTearOff();

mixin _$BreathType {
  double get v;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inhale(double v),
    @required Result exhale(double v),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inhale(double v),
    Result exhale(double v),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inhale(BreathTypeInhale value),
    @required Result exhale(BreathTypeExhale value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inhale(BreathTypeInhale value),
    Result exhale(BreathTypeExhale value),
    @required Result orElse(),
  });

  $BreathTypeCopyWith<BreathType> get copyWith;
}

abstract class $BreathTypeCopyWith<$Res> {
  factory $BreathTypeCopyWith(
          BreathType value, $Res Function(BreathType) then) =
      _$BreathTypeCopyWithImpl<$Res>;
  $Res call({double v});
}

class _$BreathTypeCopyWithImpl<$Res> implements $BreathTypeCopyWith<$Res> {
  _$BreathTypeCopyWithImpl(this._value, this._then);

  final BreathType _value;
  // ignore: unused_field
  final $Res Function(BreathType) _then;

  @override
  $Res call({
    Object v = freezed,
  }) {
    return _then(_value.copyWith(
      v: v == freezed ? _value.v : v as double,
    ));
  }
}

abstract class $BreathTypeInhaleCopyWith<$Res>
    implements $BreathTypeCopyWith<$Res> {
  factory $BreathTypeInhaleCopyWith(
          BreathTypeInhale value, $Res Function(BreathTypeInhale) then) =
      _$BreathTypeInhaleCopyWithImpl<$Res>;
  @override
  $Res call({double v});
}

class _$BreathTypeInhaleCopyWithImpl<$Res>
    extends _$BreathTypeCopyWithImpl<$Res>
    implements $BreathTypeInhaleCopyWith<$Res> {
  _$BreathTypeInhaleCopyWithImpl(
      BreathTypeInhale _value, $Res Function(BreathTypeInhale) _then)
      : super(_value, (v) => _then(v as BreathTypeInhale));

  @override
  BreathTypeInhale get _value => super._value as BreathTypeInhale;

  @override
  $Res call({
    Object v = freezed,
  }) {
    return _then(BreathTypeInhale(
      v == freezed ? _value.v : v as double,
    ));
  }
}

class _$BreathTypeInhale
    with DiagnosticableTreeMixin
    implements BreathTypeInhale {
  _$BreathTypeInhale(this.v) : assert(v != null);

  @override
  final double v;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BreathType.inhale(v: $v)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BreathType.inhale'))
      ..add(DiagnosticsProperty('v', v));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BreathTypeInhale &&
            (identical(other.v, v) ||
                const DeepCollectionEquality().equals(other.v, v)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(v);

  @override
  $BreathTypeInhaleCopyWith<BreathTypeInhale> get copyWith =>
      _$BreathTypeInhaleCopyWithImpl<BreathTypeInhale>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inhale(double v),
    @required Result exhale(double v),
  }) {
    assert(inhale != null);
    assert(exhale != null);
    return inhale(v);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inhale(double v),
    Result exhale(double v),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inhale != null) {
      return inhale(v);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inhale(BreathTypeInhale value),
    @required Result exhale(BreathTypeExhale value),
  }) {
    assert(inhale != null);
    assert(exhale != null);
    return inhale(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inhale(BreathTypeInhale value),
    Result exhale(BreathTypeExhale value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inhale != null) {
      return inhale(this);
    }
    return orElse();
  }
}

abstract class BreathTypeInhale implements BreathType {
  factory BreathTypeInhale(double v) = _$BreathTypeInhale;

  @override
  double get v;
  @override
  $BreathTypeInhaleCopyWith<BreathTypeInhale> get copyWith;
}

abstract class $BreathTypeExhaleCopyWith<$Res>
    implements $BreathTypeCopyWith<$Res> {
  factory $BreathTypeExhaleCopyWith(
          BreathTypeExhale value, $Res Function(BreathTypeExhale) then) =
      _$BreathTypeExhaleCopyWithImpl<$Res>;
  @override
  $Res call({double v});
}

class _$BreathTypeExhaleCopyWithImpl<$Res>
    extends _$BreathTypeCopyWithImpl<$Res>
    implements $BreathTypeExhaleCopyWith<$Res> {
  _$BreathTypeExhaleCopyWithImpl(
      BreathTypeExhale _value, $Res Function(BreathTypeExhale) _then)
      : super(_value, (v) => _then(v as BreathTypeExhale));

  @override
  BreathTypeExhale get _value => super._value as BreathTypeExhale;

  @override
  $Res call({
    Object v = freezed,
  }) {
    return _then(BreathTypeExhale(
      v == freezed ? _value.v : v as double,
    ));
  }
}

class _$BreathTypeExhale
    with DiagnosticableTreeMixin
    implements BreathTypeExhale {
  _$BreathTypeExhale(this.v) : assert(v != null);

  @override
  final double v;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BreathType.exhale(v: $v)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BreathType.exhale'))
      ..add(DiagnosticsProperty('v', v));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BreathTypeExhale &&
            (identical(other.v, v) ||
                const DeepCollectionEquality().equals(other.v, v)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(v);

  @override
  $BreathTypeExhaleCopyWith<BreathTypeExhale> get copyWith =>
      _$BreathTypeExhaleCopyWithImpl<BreathTypeExhale>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inhale(double v),
    @required Result exhale(double v),
  }) {
    assert(inhale != null);
    assert(exhale != null);
    return exhale(v);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inhale(double v),
    Result exhale(double v),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exhale != null) {
      return exhale(v);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inhale(BreathTypeInhale value),
    @required Result exhale(BreathTypeExhale value),
  }) {
    assert(inhale != null);
    assert(exhale != null);
    return exhale(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inhale(BreathTypeInhale value),
    Result exhale(BreathTypeExhale value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exhale != null) {
      return exhale(this);
    }
    return orElse();
  }
}

abstract class BreathTypeExhale implements BreathType {
  factory BreathTypeExhale(double v) = _$BreathTypeExhale;

  @override
  double get v;
  @override
  $BreathTypeExhaleCopyWith<BreathTypeExhale> get copyWith;
}
