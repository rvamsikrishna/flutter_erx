// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'input_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MyInputTypeTearOff {
  const _$MyInputTypeTearOff();

  MyInputTypeText text() {
    return MyInputTypeText();
  }

  MyInputTypeNumber number() {
    return MyInputTypeNumber();
  }

  MyInputTypeDecimal decimal() {
    return MyInputTypeDecimal();
  }

  MyInputTypeChoice choice(List<String> values) {
    return MyInputTypeChoice(
      values,
    );
  }
}

// ignore: unused_element
const $MyInputType = _$MyInputTypeTearOff();

mixin _$MyInputType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(),
    @required Result number(),
    @required Result decimal(),
    @required Result choice(List<String> values),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(),
    Result number(),
    Result decimal(),
    Result choice(List<String> values),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(MyInputTypeText value),
    @required Result number(MyInputTypeNumber value),
    @required Result decimal(MyInputTypeDecimal value),
    @required Result choice(MyInputTypeChoice value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(MyInputTypeText value),
    Result number(MyInputTypeNumber value),
    Result decimal(MyInputTypeDecimal value),
    Result choice(MyInputTypeChoice value),
    @required Result orElse(),
  });
}

abstract class $MyInputTypeCopyWith<$Res> {
  factory $MyInputTypeCopyWith(
          MyInputType value, $Res Function(MyInputType) then) =
      _$MyInputTypeCopyWithImpl<$Res>;
}

class _$MyInputTypeCopyWithImpl<$Res> implements $MyInputTypeCopyWith<$Res> {
  _$MyInputTypeCopyWithImpl(this._value, this._then);

  final MyInputType _value;
  // ignore: unused_field
  final $Res Function(MyInputType) _then;
}

abstract class $MyInputTypeTextCopyWith<$Res> {
  factory $MyInputTypeTextCopyWith(
          MyInputTypeText value, $Res Function(MyInputTypeText) then) =
      _$MyInputTypeTextCopyWithImpl<$Res>;
}

class _$MyInputTypeTextCopyWithImpl<$Res>
    extends _$MyInputTypeCopyWithImpl<$Res>
    implements $MyInputTypeTextCopyWith<$Res> {
  _$MyInputTypeTextCopyWithImpl(
      MyInputTypeText _value, $Res Function(MyInputTypeText) _then)
      : super(_value, (v) => _then(v as MyInputTypeText));

  @override
  MyInputTypeText get _value => super._value as MyInputTypeText;
}

class _$MyInputTypeText
    with DiagnosticableTreeMixin
    implements MyInputTypeText {
  _$MyInputTypeText();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyInputType.text()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MyInputType.text'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MyInputTypeText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(),
    @required Result number(),
    @required Result decimal(),
    @required Result choice(List<String> values),
  }) {
    assert(text != null);
    assert(number != null);
    assert(decimal != null);
    assert(choice != null);
    return text();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(),
    Result number(),
    Result decimal(),
    Result choice(List<String> values),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(MyInputTypeText value),
    @required Result number(MyInputTypeNumber value),
    @required Result decimal(MyInputTypeDecimal value),
    @required Result choice(MyInputTypeChoice value),
  }) {
    assert(text != null);
    assert(number != null);
    assert(decimal != null);
    assert(choice != null);
    return text(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(MyInputTypeText value),
    Result number(MyInputTypeNumber value),
    Result decimal(MyInputTypeDecimal value),
    Result choice(MyInputTypeChoice value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class MyInputTypeText implements MyInputType {
  factory MyInputTypeText() = _$MyInputTypeText;
}

abstract class $MyInputTypeNumberCopyWith<$Res> {
  factory $MyInputTypeNumberCopyWith(
          MyInputTypeNumber value, $Res Function(MyInputTypeNumber) then) =
      _$MyInputTypeNumberCopyWithImpl<$Res>;
}

class _$MyInputTypeNumberCopyWithImpl<$Res>
    extends _$MyInputTypeCopyWithImpl<$Res>
    implements $MyInputTypeNumberCopyWith<$Res> {
  _$MyInputTypeNumberCopyWithImpl(
      MyInputTypeNumber _value, $Res Function(MyInputTypeNumber) _then)
      : super(_value, (v) => _then(v as MyInputTypeNumber));

  @override
  MyInputTypeNumber get _value => super._value as MyInputTypeNumber;
}

class _$MyInputTypeNumber
    with DiagnosticableTreeMixin
    implements MyInputTypeNumber {
  _$MyInputTypeNumber();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyInputType.number()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MyInputType.number'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MyInputTypeNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(),
    @required Result number(),
    @required Result decimal(),
    @required Result choice(List<String> values),
  }) {
    assert(text != null);
    assert(number != null);
    assert(decimal != null);
    assert(choice != null);
    return number();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(),
    Result number(),
    Result decimal(),
    Result choice(List<String> values),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (number != null) {
      return number();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(MyInputTypeText value),
    @required Result number(MyInputTypeNumber value),
    @required Result decimal(MyInputTypeDecimal value),
    @required Result choice(MyInputTypeChoice value),
  }) {
    assert(text != null);
    assert(number != null);
    assert(decimal != null);
    assert(choice != null);
    return number(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(MyInputTypeText value),
    Result number(MyInputTypeNumber value),
    Result decimal(MyInputTypeDecimal value),
    Result choice(MyInputTypeChoice value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (number != null) {
      return number(this);
    }
    return orElse();
  }
}

abstract class MyInputTypeNumber implements MyInputType {
  factory MyInputTypeNumber() = _$MyInputTypeNumber;
}

abstract class $MyInputTypeDecimalCopyWith<$Res> {
  factory $MyInputTypeDecimalCopyWith(
          MyInputTypeDecimal value, $Res Function(MyInputTypeDecimal) then) =
      _$MyInputTypeDecimalCopyWithImpl<$Res>;
}

class _$MyInputTypeDecimalCopyWithImpl<$Res>
    extends _$MyInputTypeCopyWithImpl<$Res>
    implements $MyInputTypeDecimalCopyWith<$Res> {
  _$MyInputTypeDecimalCopyWithImpl(
      MyInputTypeDecimal _value, $Res Function(MyInputTypeDecimal) _then)
      : super(_value, (v) => _then(v as MyInputTypeDecimal));

  @override
  MyInputTypeDecimal get _value => super._value as MyInputTypeDecimal;
}

class _$MyInputTypeDecimal
    with DiagnosticableTreeMixin
    implements MyInputTypeDecimal {
  _$MyInputTypeDecimal();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyInputType.decimal()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MyInputType.decimal'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MyInputTypeDecimal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(),
    @required Result number(),
    @required Result decimal(),
    @required Result choice(List<String> values),
  }) {
    assert(text != null);
    assert(number != null);
    assert(decimal != null);
    assert(choice != null);
    return decimal();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(),
    Result number(),
    Result decimal(),
    Result choice(List<String> values),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decimal != null) {
      return decimal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(MyInputTypeText value),
    @required Result number(MyInputTypeNumber value),
    @required Result decimal(MyInputTypeDecimal value),
    @required Result choice(MyInputTypeChoice value),
  }) {
    assert(text != null);
    assert(number != null);
    assert(decimal != null);
    assert(choice != null);
    return decimal(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(MyInputTypeText value),
    Result number(MyInputTypeNumber value),
    Result decimal(MyInputTypeDecimal value),
    Result choice(MyInputTypeChoice value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decimal != null) {
      return decimal(this);
    }
    return orElse();
  }
}

abstract class MyInputTypeDecimal implements MyInputType {
  factory MyInputTypeDecimal() = _$MyInputTypeDecimal;
}

abstract class $MyInputTypeChoiceCopyWith<$Res> {
  factory $MyInputTypeChoiceCopyWith(
          MyInputTypeChoice value, $Res Function(MyInputTypeChoice) then) =
      _$MyInputTypeChoiceCopyWithImpl<$Res>;
  $Res call({List<String> values});
}

class _$MyInputTypeChoiceCopyWithImpl<$Res>
    extends _$MyInputTypeCopyWithImpl<$Res>
    implements $MyInputTypeChoiceCopyWith<$Res> {
  _$MyInputTypeChoiceCopyWithImpl(
      MyInputTypeChoice _value, $Res Function(MyInputTypeChoice) _then)
      : super(_value, (v) => _then(v as MyInputTypeChoice));

  @override
  MyInputTypeChoice get _value => super._value as MyInputTypeChoice;

  @override
  $Res call({
    Object values = freezed,
  }) {
    return _then(MyInputTypeChoice(
      values == freezed ? _value.values : values as List<String>,
    ));
  }
}

class _$MyInputTypeChoice
    with DiagnosticableTreeMixin
    implements MyInputTypeChoice {
  _$MyInputTypeChoice(this.values) : assert(values != null);

  @override
  final List<String> values;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyInputType.choice(values: $values)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyInputType.choice'))
      ..add(DiagnosticsProperty('values', values));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MyInputTypeChoice &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(values);

  @override
  $MyInputTypeChoiceCopyWith<MyInputTypeChoice> get copyWith =>
      _$MyInputTypeChoiceCopyWithImpl<MyInputTypeChoice>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(),
    @required Result number(),
    @required Result decimal(),
    @required Result choice(List<String> values),
  }) {
    assert(text != null);
    assert(number != null);
    assert(decimal != null);
    assert(choice != null);
    return choice(values);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(),
    Result number(),
    Result decimal(),
    Result choice(List<String> values),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (choice != null) {
      return choice(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(MyInputTypeText value),
    @required Result number(MyInputTypeNumber value),
    @required Result decimal(MyInputTypeDecimal value),
    @required Result choice(MyInputTypeChoice value),
  }) {
    assert(text != null);
    assert(number != null);
    assert(decimal != null);
    assert(choice != null);
    return choice(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(MyInputTypeText value),
    Result number(MyInputTypeNumber value),
    Result decimal(MyInputTypeDecimal value),
    Result choice(MyInputTypeChoice value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }
}

abstract class MyInputTypeChoice implements MyInputType {
  factory MyInputTypeChoice(List<String> values) = _$MyInputTypeChoice;

  List<String> get values;
  $MyInputTypeChoiceCopyWith<MyInputTypeChoice> get copyWith;
}
