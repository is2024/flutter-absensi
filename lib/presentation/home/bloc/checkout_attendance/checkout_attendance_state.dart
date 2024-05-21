part of 'checkout_attendance_bloc.dart';

@freezed
class CheckoutAttendanceState with _$CheckoutAttendanceState {
  const factory CheckoutAttendanceState.initial() = _Initial;
  const factory CheckoutAttendanceState.loading() = _Loading;
  const factory CheckoutAttendanceState.loaded(CheckInOutResponseModel responseModel) = _Loaded;
  const factory CheckoutAttendanceState.error(String message) = _Error;
}
