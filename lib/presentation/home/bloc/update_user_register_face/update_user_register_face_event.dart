part of 'update_user_register_face_bloc.dart';

@freezed
class UpdateUserRegisterFaceEvent with _$UpdateUserRegisterFaceEvent {
  const factory UpdateUserRegisterFaceEvent.started() = _Started;
  const factory UpdateUserRegisterFaceEvent.updateProfileRegisterFace(
      String embedding, XFile? image) = _UpdateProfileRegisterFace;
}