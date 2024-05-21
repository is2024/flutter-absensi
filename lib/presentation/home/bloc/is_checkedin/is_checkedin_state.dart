part of 'is_checkedin_bloc.dart';

@freezed
class IsCheckedinState with _$IsCheckedinState {
  const factory IsCheckedinState.initial() = _Initial;
  const factory IsCheckedinState.loading() = _Loading;
  const factory IsCheckedinState.success(AbsentStatus data) = _Success;
  const factory IsCheckedinState.error(String message) = _Error;
}
