import 'package:flutter/material.dart';
import 'package:srijani_s_application1/presentation/registration_screen/registration_screen.dart';
import 'package:srijani_s_application1/presentation/registration_one_screen/registration_one_screen.dart';
import 'package:srijani_s_application1/presentation/enter_code_screen/enter_code_screen.dart';
import 'package:srijani_s_application1/presentation/welcome_screen/welcome_screen.dart';
import 'package:srijani_s_application1/presentation/login_screen/login_screen.dart';
import 'package:srijani_s_application1/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:srijani_s_application1/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:srijani_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registrationScreen = '/registration_screen';

  static const String registrationOneScreen = '/registration_one_screen';

  static const String enterCodeScreen = '/enter_code_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        registrationScreen: RegistrationScreen.builder,
        registrationOneScreen: RegistrationOneScreen.builder,
        enterCodeScreen: EnterCodeScreen.builder,
        welcomeScreen: WelcomeScreen.builder,
        loginScreen: LoginScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: RegistrationScreen.builder
      };
}
