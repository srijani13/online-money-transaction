import 'bloc/enter_code_bloc.dart';
import 'models/enter_code_model.dart';
import 'package:flutter/material.dart';
import 'package:srijani_s_application1/core/app_export.dart';
import 'package:srijani_s_application1/widgets/custom_elevated_button.dart';
import 'package:srijani_s_application1/widgets/custom_pin_code_text_field.dart';

class EnterCodeScreen extends StatelessWidget {
  const EnterCodeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EnterCodeBloc>(
      create: (context) => EnterCodeBloc(EnterCodeState(
        enterCodeModelObj: EnterCodeModel(),
      ))
        ..add(EnterCodeInitialEvent()),
      child: EnterCodeScreen(),
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
            horizontal: 18.h,
            vertical: 1.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 75.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_enter_code".tr,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          fontSize: 22.fSize,
                          fontFamily: 'Titillium Web',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: 195.h,
                        child: Text(
                          "msg_enter_the_6_digit".tr,
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
                      SizedBox(height: 32.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 134.h,
                          margin: EdgeInsets.only(
                            left: 87.h,
                            right: 59.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 36.h,
                            vertical: 29.v,
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 31.v),
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
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: BlocSelector<EnterCodeBloc, EnterCodeState,
                            TextEditingController?>(
                          selector: (state) => state.otpController,
                          builder: (context, otpController) {
                            return CustomPinCodeTextField(
                              context: context,
                              controller: otpController,
                              onChanged: (value) {
                                otpController?.text = value;
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: Text(
                              "lbl_resend_code_in".tr,
                              style: TextStyle(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(0.53),
                                fontSize: 12.fSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_43".tr,
                                    style: TextStyle(
                                      color: theme.colorScheme.primary,
                                      fontSize: 12.fSize,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl_second".tr,
                                    style: TextStyle(
                                      color: appTheme.gray600,
                                      fontSize: 12.fSize,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 77.v),
                      CustomElevatedButton(
                        text: "lbl_continue".tr.toUpperCase(),
                        margin: EdgeInsets.only(left: 6.h),
                      ),
                      SizedBox(height: 76.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
