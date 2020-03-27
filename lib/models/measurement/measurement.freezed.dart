// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MeasurementTearOff {
  const _$MeasurementTearOff();

  _Measurement call(
      {String title,
      String units,
      String description,
      dynamic value,
      MyInputType inputType}) {
    return _Measurement(
      title: title,
      units: units,
      description: description,
      value: value,
      inputType: inputType,
    );
  }
}

// ignore: unused_element
const $Measurement = _$MeasurementTearOff();

mixin _$Measurement {
  String get title;
  String get units;
  String get description;
  dynamic get value;
  MyInputType get inputType;

  $MeasurementCopyWith<Measurement> get copyWith;
}

abstract class $MeasurementCopyWith<$Res> {
  factory $MeasurementCopyWith(
          Measurement value, $Res Function(Measurement) then) =
      _$MeasurementCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String units,
      String description,
      dynamic value,
      MyInputType inputType});

  $MyInputTypeCopyWith<$Res> get inputType;
}

class _$MeasurementCopyWithImpl<$Res> implements $MeasurementCopyWith<$Res> {
  _$MeasurementCopyWithImpl(this._value, this._then);

  final Measurement _value;
  // ignore: unused_field
  final $Res Function(Measurement) _then;

  @override
  $Res call({
    Object title = freezed,
    Object units = freezed,
    Object description = freezed,
    Object value = freezed,
    Object inputType = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      units: units == freezed ? _value.units : units as String,
      description:
          description == freezed ? _value.description : description as String,
      value: value == freezed ? _value.value : value as dynamic,
      inputType:
          inputType == freezed ? _value.inputType : inputType as MyInputType,
    ));
  }

  @override
  $MyInputTypeCopyWith<$Res> get inputType {
    if (_value.inputType == null) {
      return null;
    }
    return $MyInputTypeCopyWith<$Res>(_value.inputType, (value) {
      return _then(_value.copyWith(inputType: value));
    });
  }
}

abstract class _$MeasurementCopyWith<$Res>
    implements $MeasurementCopyWith<$Res> {
  factory _$MeasurementCopyWith(
          _Measurement value, $Res Function(_Measurement) then) =
      __$MeasurementCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String units,
      String description,
      dynamic value,
      MyInputType inputType});

  @override
  $MyInputTypeCopyWith<$Res> get inputType;
}

class __$MeasurementCopyWithImpl<$Res> extends _$MeasurementCopyWithImpl<$Res>
    implements _$MeasurementCopyWith<$Res> {
  __$MeasurementCopyWithImpl(
      _Measurement _value, $Res Function(_Measurement) _then)
      : super(_value, (v) => _then(v as _Measurement));

  @override
  _Measurement get _value => super._value as _Measurement;

  @override
  $Res call({
    Object title = freezed,
    Object units = freezed,
    Object description = freezed,
    Object value = freezed,
    Object inputType = freezed,
  }) {
    return _then(_Measurement(
      title: title == freezed ? _value.title : title as String,
      units: units == freezed ? _value.units : units as String,
      description:
          description == freezed ? _value.description : description as String,
      value: value == freezed ? _value.value : value as dynamic,
      inputType:
          inputType == freezed ? _value.inputType : inputType as MyInputType,
    ));
  }
}

class _$_Measurement with DiagnosticableTreeMixin implements _Measurement {
  _$_Measurement(
      {this.title, this.units, this.description, this.value, this.inputType});

  @override
  final String title;
  @override
  final String units;
  @override
  final String description;
  @override
  final dynamic value;
  @override
  final MyInputType inputType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Measurement(title: $title, units: $units, description: $description, value: $value, inputType: $inputType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Measurement'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('units', units))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('inputType', inputType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Measurement &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.units, units) ||
                const DeepCollectionEquality().equals(other.units, units)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.inputType, inputType) ||
                const DeepCollectionEquality()
                    .equals(other.inputType, inputType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(units) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(inputType);

  @override
  _$MeasurementCopyWith<_Measurement> get copyWith =>
      __$MeasurementCopyWithImpl<_Measurement>(this, _$identity);
}

abstract class _Measurement implements Measurement {
  factory _Measurement(
      {String title,
      String units,
      String description,
      dynamic value,
      MyInputType inputType}) = _$_Measurement;

  @override
  String get title;
  @override
  String get units;
  @override
  String get description;
  @override
  dynamic get value;
  @override
  MyInputType get inputType;
  @override
  _$MeasurementCopyWith<_Measurement> get copyWith;
}
