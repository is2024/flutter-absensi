part of 'get_attendance_by_date_bloc.dart';

@freezed
class GetAttendanceByDateState with _$GetAttendanceByDateState {
  const factory GetAttendanceByDateState.initial() = _Initial;
  const factory GetAttendanceByDateState.loading() = _Loading;
  const factory GetAttendanceByDateState.loaded(Attendance attendance) =
      _Loaded;
  const factory GetAttendanceByDateState.error(String message) = _Error;
  const factory GetAttendanceByDateState.empty() = _Empty;
}
