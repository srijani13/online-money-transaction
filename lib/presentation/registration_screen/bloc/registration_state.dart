// ignore_for_file: must_be_immutable

part of 'registration_bloc.dart';

/// Represents the state of Registration in the application.
class RegistrationState extends Equatable {
  RegistrationState({this.registrationModelObj});

  RegistrationModel? registrationModelObj;

  @override
  List<Object?> get props => [
        registrationModelObj,
      ];
  RegistrationState copyWith({RegistrationModel? registrationModelObj}) {
    return RegistrationState(
      registrationModelObj: registrationModelObj ?? this.registrationModelObj,
    );
  }
}
