import 'package:flutter/material.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SfCalendar(

          selectionDecoration: const BoxDecoration(color: transparent),
          monthViewSettings: const MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          ),
          dataSource: EventsDataSource(getAppointments()),
          firstDayOfWeek: 6,
          view: CalendarView.month,
        ),
      ),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> events = <Appointment>[];
  DateTime today = DateTime.now();
  DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0);
  DateTime endTime = startTime.add(Duration(hours: 2));

  events.add(Appointment(
      isAllDay: true,
      startTime: startTime,
      endTime: endTime,
      subject: "Event",
      color: primaryColor));
  events.add(Appointment(
      isAllDay: true,
      startTime: startTime,
      endTime: endTime,
      subject: "Event",
      color: primaryColor));

  startTime = DateTime(today.year, today.month, today.day + 1, 9, 0, 0);
  endTime = startTime.add(Duration(hours: 2));

  events.add(Appointment(
      isAllDay: true,
      startTime: startTime,
      endTime: endTime,
      subject: "hello",
      color: primaryColor));

  startTime = DateTime(today.year, today.month, today.day + 11, 9, 0, 0);
  endTime = startTime.add(Duration(hours: 2));

  events.add(Appointment(
      isAllDay: true,
      startTime: startTime,
      endTime: endTime,
      subject: "Bye",
      color: primaryColor));
  return events;
}

class EventsDataSource extends CalendarDataSource {
  EventsDataSource(List<Appointment> source) {
    appointments = source;
  }
}
