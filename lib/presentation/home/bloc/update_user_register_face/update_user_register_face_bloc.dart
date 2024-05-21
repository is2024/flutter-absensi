import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_absensi_app/data/datasources/auth_remote_datasource.dart';

import '../../../../data/models/response/user_response_model.dart';

part 'update_user_register_face_bloc.freezed.dart';
part 'update_user_register_face_event.dart';
part 'update_user_register_face_state.dart';

class UpdateUserRegisterFaceBloc
    extends Bloc<UpdateUserRegisterFaceEvent, UpdateUserRegisterFaceState> {
  final AuthRemoteDatasource authRemoteDatasource;
  UpdateUserRegisterFaceBloc(
    this.authRemoteDatasource,
  ) : super(const _Initial()) {
    on<_UpdateProfileRegisterFace>((event, emit) async {
      emit(const _Loading());
      try {
        final user = await authRemoteDatasource.updateProfileRegisterFace(
            event.embedding);
        user.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_Success(r)),
        );
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
