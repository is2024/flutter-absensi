import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_absensi_app/data/datasources/attendance_remote_datasource.dart';
import 'package:flutter_absensi_app/data/models/response/company_response_model.dart';

part 'get_company_bloc.freezed.dart';
part 'get_company_event.dart';
part 'get_company_state.dart';

class GetCompanyBloc extends Bloc<GetCompanyEvent, GetCompanyState> {
  final AttendanceRemoteDatasource datasource;
  GetCompanyBloc(
    this.datasource,
  ) : super(const _Initial()) {
    on<_GetCompany>((event, emit) async {
      emit(const _Loading());
      final result = await datasource.getCompanyProfile();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r.company!)),
      );
    });
  }
}
