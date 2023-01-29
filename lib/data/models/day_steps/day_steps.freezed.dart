// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_steps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DaySteps _$DayStepsFromJson(Map<String, dynamic> json) {
  return _DaySteps.fromJson(json);
}

/// @nodoc
mixin _$DaySteps {
  DateTime get date => throw _privateConstructorUsedError;
  num get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayStepsCopyWith<DaySteps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayStepsCopyWith<$Res> {
  factory $DayStepsCopyWith(DaySteps value, $Res Function(DaySteps) then) =
      _$DayStepsCopyWithImpl<$Res, DaySteps>;
  @useResult
  $Res call({DateTime date, num steps});
}

/// @nodoc
class _$DayStepsCopyWithImpl<$Res, $Val extends DaySteps>
    implements $DayStepsCopyWith<$Res> {
  _$DayStepsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? steps = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayStepsCopyWith<$Res> implements $DayStepsCopyWith<$Res> {
  factory _$$_DayStepsCopyWith(
          _$_DaySteps value, $Res Function(_$_DaySteps) then) =
      __$$_DayStepsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, num steps});
}

/// @nodoc
class __$$_DayStepsCopyWithImpl<$Res>
    extends _$DayStepsCopyWithImpl<$Res, _$_DaySteps>
    implements _$$_DayStepsCopyWith<$Res> {
  __$$_DayStepsCopyWithImpl(
      _$_DaySteps _value, $Res Function(_$_DaySteps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? steps = null,
  }) {
    return _then(_$_DaySteps(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DaySteps with DiagnosticableTreeMixin implements _DaySteps {
  const _$_DaySteps({required this.date, required this.steps});

  factory _$_DaySteps.fromJson(Map<String, dynamic> json) =>
      _$$_DayStepsFromJson(json);

  @override
  final DateTime date;
  @override
  final num steps;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DaySteps(date: $date, steps: $steps)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DaySteps'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('steps', steps));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaySteps &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.steps, steps) || other.steps == steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, steps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayStepsCopyWith<_$_DaySteps> get copyWith =>
      __$$_DayStepsCopyWithImpl<_$_DaySteps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayStepsToJson(
      this,
    );
  }
}

abstract class _DaySteps implements DaySteps {
  const factory _DaySteps(
      {required final DateTime date, required final num steps}) = _$_DaySteps;

  factory _DaySteps.fromJson(Map<String, dynamic> json) = _$_DaySteps.fromJson;

  @override
  DateTime get date;
  @override
  num get steps;
  @override
  @JsonKey(ignore: true)
  _$$_DayStepsCopyWith<_$_DaySteps> get copyWith =>
      throw _privateConstructorUsedError;
}
