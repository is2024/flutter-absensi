part of 'checkout_attendance_bloc.dart';

@freezed
class CheckoutAttendanceEvent with _$CheckoutAttendanceEvent {
  const factory CheckoutAttendanceEvent.started() = _Started;
  const factory CheckoutAttendanceEvent.checkout(String latitute, String longitude) = _Checkout;
}