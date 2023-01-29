import 'package:health/health.dart';
import 'package:health_walk/ui/screens/calendar/calendar_screen_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

final calendarScreenViewmodelProvider = StateNotifierProvider.autoDispose<
    CalendarScreenViewmodel, CalendarScreenState>(
  (ref) => CalendarScreenViewmodel(ref: ref),
);

class CalendarScreenViewmodel extends StateNotifier<CalendarScreenState> {
  final AutoDisposeStateNotifierProviderRef _ref;

  CalendarScreenViewmodel({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(CalendarScreenState(
            selectDate: DateTime.now(), totalSteps: 0, dayStepHistory: []));

  Future<void> fetchSteps(DateTime targetDate) async {
    HealthFactory health = HealthFactory();

    bool requested = await health.requestAuthorization([
      HealthDataType.STEPS,
    ], permissions: [
      HealthDataAccess.READ,
    ]);

    await Permission.activityRecognition.request();
    await Permission.location.request();

    if (requested) {
      try {
        // fetch health data
        final now = DateTime.now();

        // get data within the last 24 hours
        final int totalSteps = await health.getTotalStepsInInterval(
              DateTime(
                  targetDate.year, targetDate.month, targetDate.day, 0, 0, 0),
              DateTime(targetDate.year, targetDate.month, targetDate.day, 23,
                  59, 59),
            ) ??
            0;

        List<HealthDataPoint> stepHistory = await health.getHealthDataFromTypes(
          DateTime(now.year, now.month, now.day, 0, 0, 0),
          DateTime(now.year, now.month, now.day, 23, 59, 59),
          [HealthDataType.STEPS],
        );

        stepHistory = HealthFactory.removeDuplicates(stepHistory);

        state = state.copyWith(
          totalSteps: totalSteps,
          dayStepHistory: stepHistory,
        );
      } catch (error) {
        print("Exception in getHealthDataFromTypes: $error");
      }
    }
  }

  void updateTargetDate(DateTime targetDate) async {
    await fetchSteps(targetDate);
    state = state.copyWith(selectDate: targetDate);
  }
}
