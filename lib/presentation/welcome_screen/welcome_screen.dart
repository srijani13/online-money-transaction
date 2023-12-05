import 'bloc/welcome_bloc.dart';
import 'models/welcome_model.dart';
import 'package:flutter/material.dart';
import 'package:srijani_s_application1/core/app_export.dart';
import 'package:srijani_s_application1/widgets/custom_elevated_button.dart';
import 'package:srijani_s_application1/widgets/custom_floating_text_field.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeBloc>(
      create: (context) => WelcomeBloc(WelcomeState(
        welcomeModelObj: WelcomeModel(),
      ))
        ..add(WelcomeInitialEvent()),
      child: WelcomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<WelcomeBloc, WelcomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 19.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 3.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 29.h,
                      vertical: 53.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder32,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_welcome".tr,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            fontSize: 22.fSize,
                            fontFamily: 'Titillium Web',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        SizedBox(
                          width: 181.h,
                          child: Text(
                            "msg_set_a_name_for_your".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer,
                              fontSize: 11.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        SizedBox(height: 21.v),
                        SizedBox(
                          height: 113.v,
                          width: 108.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imageNotFound,
                                height: 108.adaptSize,
                                width: 108.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(left: 2.h),
                                  padding: EdgeInsets.symmetric(vertical: 30.v),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imageNotFound,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 34.v),
                                      Container(
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius: BorderRadius.circular(
                                            9.h,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 71.v),
                        _buildWelcomeImage(context),
                        SizedBox(height: 24.v),
                        _buildUserNameField(context),
                        SizedBox(height: 24.v),
                        _buildPasswordField(context),
                        SizedBox(height: 74.v),
                        _buildContinueButton(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWelcomeImage(BuildContext context) {
    return BlocSelector<WelcomeBloc, WelcomeState, TextEditingController?>(
      selector: (state) => state.welcomeImageController,
      builder: (context, welcomeImageController) {
        return CustomFloatingTextField(
          controller: welcomeImageController,
          labelText: "lbl_email".tr,
          labelStyle: TextStyle(
            color: theme.colorScheme.errorContainer.withOpacity(0.53),
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          hintText: "lbl_email".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUserNameField(BuildContext context) {
    return BlocSelector<WelcomeBloc, WelcomeState, TextEditingController?>(
      selector: (state) => state.userNameFieldController,
      builder: (context, userNameFieldController) {
        return CustomFloatingTextField(
          controller: userNameFieldController,
          labelText: "lbl_name".tr,
          labelStyle: TextStyle(
            color: theme.colorScheme.errorContainer.withOpacity(0.53),
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          hintText: "lbl_name".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return BlocSelector<WelcomeBloc, WelcomeState, TextEditingController?>(
      selector: (state) => state.passwordFieldController,
      builder: (context, passwordFieldController) {
        return CustomFloatingTextField(
          controller: passwordFieldController,
          labelText: "lbl_password".tr,
          labelStyle: TextStyle(
            color: theme.colorScheme.errorContainer.withOpacity(0.53),
            fontSize: 12.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          hintText: "lbl_password".tr,
          textInputAction: TextInputAction.done,
          prefix: Container(
            width: 5.adaptSize,
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 68.v,
          ),
          suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 18.h),
            child: CustomImageView(
              imagePath: ImageConstant.imageNotFound,
              height: 13.v,
              width: 20.h,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 68.v,
          ),
          contentPadding: EdgeInsets.fromLTRB(26.h, -10.v, 26.h, 50.v),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_continue".tr.toUpperCase(),
    );
  }
}
