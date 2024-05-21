import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_absensi_app/data/datasources/attendance_remote_datasource.dart';
import 'package:flutter_absensi_app/data/models/response/attendance_response_model.dart';

part 'get_attendance_by_date_bloc.freezed.dart';
part 'get_attendance_by_date_event.dart';
part 'get_attendance_by_date_state.dart';

class GetAttendanceByDateBloc
    extends Bloc<GetAttendanceByDateEvent, GetAttendanceByDateState> {
  final AttendanceRemoteDatasource datasource;
  GetAttendanceByDateBloc(
    this.datasource,
  ) : super(const _Initial()) {
    on<_GetAttendanceByDate>((event, emit) async {
      emit(const _Loading());
      final result = await datasource.getAttendance(event.date);
      result.fold((message) => emit(_Error(message)), (attendance) {
        if (attendance.data!.isEmpty) {
          emit(const _Empty());
        } else {
          emit(_Loaded(attendance.data!.first));
        }
      });
    });
  }
}
