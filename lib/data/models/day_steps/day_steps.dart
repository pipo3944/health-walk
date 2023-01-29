// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_steps.freezed.dart';
part 'day_steps.g.dart';

@freezed
class DaySteps with _$DaySteps {
  const factory DaySteps({
    required DateTime date,
    required num steps,
  }) = _DaySteps;

  factory DaySteps.fromJson(Map<String, dynamic> json) =>
      _$DayStepsFromJson(json);
}
