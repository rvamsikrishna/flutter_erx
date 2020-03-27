import 'package:flutter_erx/models/input_type/input_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'measurement.freezed.dart';

@freezed
abstract class Measurement with _$Measurement {
  factory Measurement({
    String title,
    String units,
    String description,
    dynamic value,
    MyInputType inputType,
  }) = _Measurement;
}
