// ignore_for_file: must_be_immutable

part of 'enter_code_bloc.dart';

/// Represents the state of EnterCode in the application.
class EnterCodeState extends Equatable {
  EnterCodeState({
    this.otpController,
    this.enterCodeModelObj,
  });

  TextEditingController? otpController;

  EnterCodeModel? enterCodeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        enterCodeModelObj,
      ];
  EnterCodeState copyWith({
    TextEditingController? otpController,
    EnterCodeModel? enterCodeModelObj,
  }) {
    return EnterCodeState(
      otpController: otpController ?? this.otpController,
      enterCodeModelObj: enterCodeModelObj ?? this.enterCodeModelObj,
    );
  }
}
