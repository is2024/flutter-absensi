part of 'is_checkedin_bloc.dart';

@freezed
class IsCheckedinEvent with _$IsCheckedinEvent {
  const factory IsCheckedinEvent.started() = _Started;
  const factory IsCheckedinEvent.isCheckedIn() = _IsCheckedIn;
}