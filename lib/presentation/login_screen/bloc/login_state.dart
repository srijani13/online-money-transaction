// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.group16Controller,
    this.group40Controller,
    this.isShowPassword = true,
    this.loginModelObj,
  });

  TextEditingController? group16Controller;

  TextEditingController? group40Controller;

  LoginModel? loginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        group16Controller,
        group40Controller,
        isShowPassword,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? group16Controller,
    TextEditingController? group40Controller,
    bool? isShowPassword,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      group16Controller: group16Controller ?? this.group16Controller,
      group40Controller: group40Controller ?? this.group40Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
