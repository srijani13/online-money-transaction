import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:srijani_s_application1/core/app_export.dart';
import 'package:srijani_s_application1/widgets/custom_elevated_button.dart';
import 'package:srijani_s_application1/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(
        loginModelObj: LoginModel(),
      ))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 20.v,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 29.h,
              vertical: 84.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder32,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 108.h,
                  margin: EdgeInsets.symmetric(horizontal: 83.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 28.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imageNotFound,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
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
                SizedBox(height: 32.v),
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    "lbl_login".tr,
                    style: TextStyle(
                      color: theme.colorScheme.onPrimary,
                      fontSize: 22.fSize,
                      fontFamily: 'Titillium Web',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
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
                SizedBox(height: 39.v),
                SizedBox(
                  height: 68.v,
                  width: 275.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      BlocSelector<LoginBloc, LoginState,
                          TextEditingController?>(
                        selector: (state) => state.group16Controller,
                        builder: (context, group16Controller) {
                          return CustomTextFormField(
                            width: 275.h,
                            controller: group16Controller,
                            hintText: "lbl_roday_basreng".tr,
                            alignment: Alignment.bottomCenter,
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text(
                              "lbl_name".tr,
                              style: TextStyle(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(0.53),
                                fontSize: 12.fSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.v),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return CustomTextFormField(
                      controller: state.group40Controller,
                      hintText: "lbl_password".tr,
                      textInputAction: TextInputAction.done,
                      suffix: InkWell(
                        onTap: () {
                          context.read<LoginBloc>().add(
                              ChangePasswordVisibilityEvent(
                                  value: !state.isShowPassword));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 30.v, 18.h, 24.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: 13.v,
                            width: 20.h,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 68.v,
                      ),
                      obscureText: state.isShowPassword,
                      contentPadding: EdgeInsets.only(left: 26.h),
                      borderDecoration:
                          TextFormFieldStyleHelper.underLinePrimaryContainer,
                    );
                  },
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "msg_forgot_password".tr,
                    style: TextStyle(
                      color: theme.colorScheme.errorContainer.withOpacity(1),
                      fontSize: 10.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 43.v),
                CustomElevatedButton(
                  text: "lbl_login".tr.toUpperCase(),
                ),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "msg_don_t_have_an_account".tr,
                          style: TextStyle(
                            color:
                                theme.colorScheme.errorContainer.withOpacity(1),
                            fontSize: 12.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "lbl_signup".tr,
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontSize: 14.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
