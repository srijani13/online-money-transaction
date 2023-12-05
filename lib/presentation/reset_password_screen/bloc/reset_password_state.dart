// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

/// Represents the state of ResetPassword in the application.
class ResetPasswordState extends Equatable {
  ResetPasswordState({
    this.group35Controller,
    this.group34Controller,
    this.isShowPassword = true,
    this.resetPasswordModelObj,
  });

  TextEditingController? group35Controller;

  TextEditingController? group34Controller;

  ResetPasswordModel? resetPasswordModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        group35Controller,
        group34Controller,
        isShowPassword,
        resetPasswordModelObj,
      ];
  ResetPasswordState copyWith({
    TextEditingController? group35Controller,
    TextEditingController? group34Controller,
    bool? isShowPassword,
    ResetPasswordModel? resetPasswordModelObj,
  }) {
    return ResetPasswordState(
      group35Controller: group35Controller ?? this.group35Controller,
      group34Controller: group34Controller ?? this.group34Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
