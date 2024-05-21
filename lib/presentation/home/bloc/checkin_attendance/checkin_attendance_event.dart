part of 'checkin_attendance_bloc.dart';

@freezed
class CheckinAttendanceEvent with _$CheckinAttendanceEvent {
  const factory CheckinAttendanceEvent.started() = _Started;
  const factory CheckinAttendanceEvent.checkin(String latitute, String longitude) = _Checkin;
}