// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarScreenState {
  DateTime get selectDate => throw _privateConstructorUsedError;
  int get totalSteps => throw _privateConstructorUsedError;
  List<HealthDataPoint> get dayStepHistory =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarScreenStateCopyWith<CalendarScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarScreenStateCopyWith<$Res> {
  factory $CalendarScreenStateCopyWith(
          CalendarScreenState value, $Res Function(CalendarScreenState) then) =
      _$CalendarScreenStateCopyWithImpl<$Res, CalendarScreenState>;
  @useResult
  $Res call(
      {DateTime selectDate,
      int totalSteps,
      List<HealthDataPoint> dayStepHistory});
}

/// @nodoc
class _$CalendarScreenStateCopyWithImpl<$Res, $Val extends CalendarScreenState>
    implements $CalendarScreenStateCopyWith<$Res> {
  _$CalendarScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectDate = null,
    Object? totalSteps = null,
    Object? dayStepHistory = null,
  }) {
    return _then(_value.copyWith(
      selectDate: null == selectDate
          ? _value.selectDate
          : selectDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      dayStepHistory: null == dayStepHistory
          ? _value.dayStepHistory
          : dayStepHistory // ignore: cast_nullable_to_non_nullable
              as List<HealthDataPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarScreenStateCopyWith<$Res>
    implements $CalendarScreenStateCopyWith<$Res> {
  factory _$$_CalendarScreenStateCopyWith(_$_CalendarScreenState value,
          $Res Function(_$_CalendarScreenState) then) =
      __$$_CalendarScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime selectDate,
      int totalSteps,
      List<HealthDataPoint> dayStepHistory});
}

/// @nodoc
class __$$_CalendarScreenStateCopyWithImpl<$Res>
    extends _$CalendarScreenStateCopyWithImpl<$Res, _$_CalendarScreenState>
    implements _$$_CalendarScreenStateCopyWith<$Res> {
  __$$_CalendarScreenStateCopyWithImpl(_$_CalendarScreenState _value,
      $Res Function(_$_CalendarScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectDate = null,
    Object? totalSteps = null,
    Object? dayStepHistory = null,
  }) {
    return _then(_$_CalendarScreenState(
      selectDate: null == selectDate
          ? _value.selectDate
          : selectDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      dayStepHistory: null == dayStepHistory
          ? _value._dayStepHistory
          : dayStepHistory // ignore: cast_nullable_to_non_nullable
              as List<HealthDataPoint>,
    ));
  }
}

/// @nodoc

class _$_CalendarScreenState
    with DiagnosticableTreeMixin
    implements _CalendarScreenState {
  const _$_CalendarScreenState(
      {required this.selectDate,
      required this.totalSteps,
      required final List<HealthDataPoint> dayStepHistory})
      : _dayStepHistory = dayStepHistory;

  @override
  final DateTime selectDate;
  @override
  final int totalSteps;
  final List<HealthDataPoint> _dayStepHistory;
  @override
  List<HealthDataPoint> get dayStepHistory {
    if (_dayStepHistory is EqualUnmodifiableListView) return _dayStepHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayStepHistory);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalendarScreenState(selectDate: $selectDate, totalSteps: $totalSteps, dayStepHistory: $dayStepHistory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalendarScreenState'))
      ..add(DiagnosticsProperty('selectDate', selectDate))
      ..add(DiagnosticsProperty('totalSteps', totalSteps))
      ..add(DiagnosticsProperty('dayStepHistory', dayStepHistory));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarScreenState &&
            (identical(other.selectDate, selectDate) ||
                other.selectDate == selectDate) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            const DeepCollectionEquality()
                .equals(other._dayStepHistory, _dayStepHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectDate, totalSteps,
      const DeepCollectionEquality().hash(_dayStepHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarScreenStateCopyWith<_$_CalendarScreenState> get copyWith =>
      __$$_CalendarScreenStateCopyWithImpl<_$_CalendarScreenState>(
          this, _$identity);
}

abstract class _CalendarScreenState implements CalendarScreenState {
  const factory _CalendarScreenState(
          {required final DateTime selectDate,
          required final int totalSteps,
          required final List<HealthDataPoint> dayStepHistory}) =
      _$_CalendarScreenState;

  @override
  DateTime get selectDate;
  @override
  int get totalSteps;
  @override
  List<HealthDataPoint> get dayStepHistory;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarScreenStateCopyWith<_$_CalendarScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
