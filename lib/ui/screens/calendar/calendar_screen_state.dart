// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health/health.dart';

part 'calendar_screen_state.freezed.dart';

@freezed
class CalendarScreenState with _$CalendarScreenState {
  const factory CalendarScreenState({
    required DateTime selectDate,
    required int totalSteps,
    required List<HealthDataPoint> dayStepHistory,
  }) = _CalendarScreenState;
}
