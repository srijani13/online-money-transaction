import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:srijani_s_application1/core/app_export.dart';
import 'package:srijani_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:srijani_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:srijani_s_application1/widgets/custom_elevated_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
      create: (context) => ForgotPasswordBloc(ForgotPasswordState(
        forgotPasswordModelObj: ForgotPasswordModel(),
      ))
        ..add(ForgotPasswordInitialEvent()),
      child: ForgotPasswordScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildGroup41(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 50.h),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 108.v,
                      width: 137.h,
                      margin: EdgeInsets.only(right: 58.h),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 15.h,
                                bottom: 37.v,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "lbl2".tr,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onSecondaryContainer,
                                      fontSize: 3.fSize,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    height: 3.adaptSize,
                                    width: 3.adaptSize,
                                    margin: EdgeInsets.only(left: 7.h),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1),
                                        width: 1.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 7.h,
                                vertical: 5.v,
                              ),
                              decoration: AppDecoration.fillBlue.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder54,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 10.v),
                                  Container(
                                    height: 6.adaptSize,
                                    width: 6.adaptSize,
                                    margin: EdgeInsets.only(left: 15.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primaryContainer,
                                      borderRadius: BorderRadius.circular(
                                        3.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 28.v),
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
                                  SizedBox(height: 27.v),
                                  Container(
                                    height: 6.adaptSize,
                                    width: 6.adaptSize,
                                    margin: EdgeInsets.only(left: 31.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.onPrimary
                                          .withOpacity(1),
                                      borderRadius: BorderRadius.circular(
                                        3.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: 70.v,
                            width: 104.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 17.v),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 54.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                      opacity: 0.8,
                      child: Padding(
                        padding: EdgeInsets.only(right: 49.h),
                        child: Text(
                          "lbl_forgot_password".tr,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary,
                            fontSize: 22.fSize,
                            fontFamily: 'Titillium Web',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
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
                  SizedBox(height: 76.v),
                  SizedBox(
                    height: 68.v,
                    width: 275.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 26.h,
                              vertical: 19.v,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imageNotFound,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Opacity(
                              opacity: 0.5,
                              child: Text(
                                "msg_roday43_gmail_com".tr,
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
                        Align(
                          alignment: Alignment.topLeft,
                          child: Opacity(
                            opacity: 0.5,
                            child: Padding(
                              padding: EdgeInsets.only(left: 26.h),
                              child: Text(
                                "lbl_email_id".tr,
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
                  SizedBox(height: 61.v),
                  CustomElevatedButton(
                    text: "lbl_next".tr.toUpperCase(),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildGroup41(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imageNotFound,
        margin: EdgeInsets.fromLTRB(46.h, 27.v, 297.h, 27.v),
      ),
    );
  }
}
