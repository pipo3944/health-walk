// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_steps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DaySteps _$$_DayStepsFromJson(Map<String, dynamic> json) => _$_DaySteps(
      date: DateTime.parse(json['date'] as String),
      steps: json['steps'] as num,
    );

Map<String, dynamic> _$$_DayStepsToJson(_$_DaySteps instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'steps': instance.steps,
    };
