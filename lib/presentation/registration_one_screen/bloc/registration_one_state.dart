// ignore_for_file: must_be_immutable

part of 'registration_one_bloc.dart';

/// Represents the state of RegistrationOne in the application.
class RegistrationOneState extends Equatable {
  RegistrationOneState({this.registrationOneModelObj});

  RegistrationOneModel? registrationOneModelObj;

  @override
  List<Object?> get props => [
        registrationOneModelObj,
      ];
  RegistrationOneState copyWith(
      {RegistrationOneModel? registrationOneModelObj}) {
    return RegistrationOneState(
      registrationOneModelObj:
          registrationOneModelObj ?? this.registrationOneModelObj,
    );
  }
}
