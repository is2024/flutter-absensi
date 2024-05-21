part of 'update_user_register_face_bloc.dart';

@freezed
class UpdateUserRegisterFaceState with _$UpdateUserRegisterFaceState {
  const factory UpdateUserRegisterFaceState.initial() = _Initial;
  const factory UpdateUserRegisterFaceState.loading() = _Loading;
  const factory UpdateUserRegisterFaceState.error(String message) = _Error;
  const factory UpdateUserRegisterFaceState.success(UserResponseModel user) = _Success;
  
}
