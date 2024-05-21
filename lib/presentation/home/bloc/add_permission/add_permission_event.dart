part of 'add_permission_bloc.dart';

@freezed
class AddPermissionEvent with _$AddPermissionEvent {
  const factory AddPermissionEvent.started() = _Started;
  const factory AddPermissionEvent.addPermission({
    required String date,
    required String reason,
    required XFile? image,
  }) = _AddPermission;
}