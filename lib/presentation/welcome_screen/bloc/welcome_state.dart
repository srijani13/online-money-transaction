// ignore_for_file: must_be_immutable

part of 'welcome_bloc.dart';

/// Represents the state of Welcome in the application.
class WelcomeState extends Equatable {
  WelcomeState({
    this.welcomeImageController,
    this.userNameFieldController,
    this.passwordFieldController,
    this.welcomeModelObj,
  });

  TextEditingController? welcomeImageController;

  TextEditingController? userNameFieldController;

  TextEditingController? passwordFieldController;

  WelcomeModel? welcomeModelObj;

  @override
  List<Object?> get props => [
        welcomeImageController,
        userNameFieldController,
        passwordFieldController,
        welcomeModelObj,
      ];
  WelcomeState copyWith({
    TextEditingController? welcomeImageController,
    TextEditingController? userNameFieldController,
    TextEditingController? passwordFieldController,
    WelcomeModel? welcomeModelObj,
  }) {
    return WelcomeState(
      welcomeImageController:
          welcomeImageController ?? this.welcomeImageController,
      userNameFieldController:
          userNameFieldController ?? this.userNameFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      welcomeModelObj: welcomeModelObj ?? this.welcomeModelObj,
    );
  }
}
