import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'breath_type.freezed.dart';

@freezed
abstract class BreathType with _$BreathType {
  factory BreathType.inhale(double v) = BreathTypeInhale;
  factory BreathType.exhale(double v) = BreathTypeExhale;
}
