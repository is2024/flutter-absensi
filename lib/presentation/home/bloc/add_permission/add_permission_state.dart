part of 'add_permission_bloc.dart';

@freezed
class AddPermissionState with _$AddPermissionState {
  const factory AddPermissionState.initial() = _Initial;
  const factory AddPermissionState.loading() = _Loading;
  const factory AddPermissionState.success() = _Success;
  const factory AddPermissionState.error(String message) = _Error;
}
