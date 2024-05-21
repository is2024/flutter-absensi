part of 'get_company_bloc.dart';

@freezed
class GetCompanyEvent with _$GetCompanyEvent {
  const factory GetCompanyEvent.started() = _Started;
  const factory GetCompanyEvent.getCompany() = _GetCompany;
}