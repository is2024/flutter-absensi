part of 'get_company_bloc.dart';

@freezed
class GetCompanyState with _$GetCompanyState {
  const factory GetCompanyState.initial() = _Initial;
  const factory GetCompanyState.loading() = _Loading;
  const factory GetCompanyState.success(Company data) = _Success;
  const factory GetCompanyState.error(String message) = _Error;
}
