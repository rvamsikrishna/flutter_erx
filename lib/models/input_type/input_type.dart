import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'input_type.freezed.dart';

@freezed
abstract class MyInputType with _$MyInputType {
  factory MyInputType.text() = MyInputTypeText;
  factory MyInputType.number() = MyInputTypeNumber;
  factory MyInputType.decimal() = MyInputTypeDecimal;
  factory MyInputType.choice(List<String> values) = MyInputTypeChoice;
  factory MyInputType.breathCount() = MyInputTypeBreathCount;
}
