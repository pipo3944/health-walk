import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends HookConsumerWidget {
  const Calendar({
    Key? key,
    required this.targetDate,
    required this.onDaySelected,
  }) : super(key: key);

  final DateTime targetDate;
  final Function(DateTime, DateTime) onDaySelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selfFormat = useState(CalendarFormat.month);

    return TableCalendar(
      locale: 'ja_JP',
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: targetDate,
      selectedDayPredicate: (day) {
        return isSameDay(targetDate, day);
      },
      calendarFormat: selfFormat.value,
      // availableCalendarFormats: const {CalendarFormat.month: 'Month'},
      onFormatChanged: (format) {
        switch (format) {
          case CalendarFormat.week:
            selfFormat.value = CalendarFormat.week;
            break;
          case CalendarFormat.twoWeeks:
            selfFormat.value = CalendarFormat.twoWeeks;
            break;
          case CalendarFormat.month:
            selfFormat.value = CalendarFormat.month;
            break;
        }
      },
      onDaySelected: onDaySelected,
    );
  }
}
