import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:health_walk/data/repositories/settings/settings_repository_impl.dart';
import 'package:health_walk/ui/components/calendar/calendar.dart';
import 'package:health_walk/ui/screens/calendar/calendar_screen_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CalendarScreen extends HookConsumerWidget {
  const CalendarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('on build calendar screen');

    final state = ref.watch(calendarScreenViewmodelProvider);
    final viewmodel = ref.watch(calendarScreenViewmodelProvider.notifier);

    final settingsState = ref.watch(settingsProvider);

    final goalProgress = useState(0.0);

    useEffect(() {
      viewmodel.fetchSteps(DateTime.now());
    }, []);

    useEffect(() {
      if (state.totalSteps / settingsState.dayStepGoalCount > 1.0) {
        goalProgress.value = 1.0;
      } else {
        goalProgress.value = state.totalSteps / settingsState.dayStepGoalCount;
      }
    }, [state.totalSteps, settingsState.dayStepGoalCount]);

    return Column(
      children: [
        Calendar(
          targetDate: state.selectDate,
          onDaySelected: (selectedDay, forcusedDay) {
            viewmodel.updateTargetDate(selectedDay);
          },
        ),
        Expanded(
          child: SizedBox(
            // width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CircularPercentIndicator(
                radius: 92.0,
                lineWidth: 16.0,
                percent: goalProgress.value,
                animation: true,
                animationDuration: 600,
                center: Text(
                  "${state.totalSteps}歩",
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                progressColor: Colors.blue,
                // linearStrokeCap: LinearStrokeCap.roundAll,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              // child: LineChart(
              //   LineChartData(
              //     lineBarsData: [
              //       LineChartBarData(
              //         spots: state.dayStepHistory.asMap().entries.map((entry) {
              //           final double index = entry.key / 1;
              //           final step = entry.value.value.hashCode;

              //           return FlSpot(index / 1, step / 1);
              //         }).toList(),
              //       ),
              //     ],
              //     titlesData: FlTitlesData(
              //       rightTitles: AxisTitles(),
              //       topTitles: AxisTitles(),
              //       bottomTitles: AxisTitles(
              //         sideTitles: _bottomTitles(),
              //         // axisNameWidget: Container(
              //         //   alignment: Alignment.centerRight,
              //         //   child: Text(
              //         //     "month",
              //         //     style: _labelStyle,
              //         //   ),
              //         // ),
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ),
        ),
        Text(
          (() {
            if (goalProgress.value < 0.5) {
              return 'まだまだこれから🔥';
            } else if (goalProgress.value < 0.8) {
              return '半分は超えた！🚶';
            } else if (goalProgress.value < 1.0) {
              return 'もうちょい...！👊';
            }
            return '目標達成！お疲れさん🎉';
          }()),
          style: const TextStyle(
            color: Color(0xff333333),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
