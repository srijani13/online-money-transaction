import 'bloc/registration_one_bloc.dart';
import 'models/registration_one_model.dart';
import 'package:flutter/material.dart';
import 'package:srijani_s_application1/core/app_export.dart';
import 'package:srijani_s_application1/widgets/custom_elevated_button.dart';

class RegistrationOneScreen extends StatelessWidget {
  const RegistrationOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RegistrationOneBloc>(
      create: (context) => RegistrationOneBloc(RegistrationOneState(
        registrationOneModelObj: RegistrationOneModel(),
      ))
        ..add(RegistrationOneInitialEvent()),
      child: RegistrationOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<RegistrationOneBloc, RegistrationOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.blueGray50,
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
                      horizontal: 24.h,
                      vertical: 52.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder32,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 4.v),
                        Text(
                          "lbl_registration".tr,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            fontSize: 22.fSize,
                            fontFamily: 'Titillium Web',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Container(
                          width: 255.h,
                          margin: EdgeInsets.symmetric(horizontal: 15.h),
                          child: Text(
                            "msg_enter_your_mobile".tr,
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
                        SizedBox(height: 24.v),
                        Container(
                          width: 118.h,
                          margin: EdgeInsets.only(
                            left: 86.h,
                            right: 80.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 53.v,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2.v),
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
                        SizedBox(height: 79.v),
                        SizedBox(
                          height: 68.v,
                          width: 275.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 68.v,
                                  width: 275.h,
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 10.v),
                                          padding: EdgeInsets.all(19.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 7.h,
                                                  top: 6.v,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: 7.v,
                                                      width: 21.h,
                                                      decoration: BoxDecoration(
                                                        color: appTheme.redA100,
                                                        borderRadius:
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              1.h),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 7.v,
                                                      width: 21.h,
                                                      decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primaryContainer,
                                                        borderRadius:
                                                            BorderRadius
                                                                .vertical(
                                                          top: Radius.circular(
                                                              1.h),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 5.h,
                                                  top: 1.v,
                                                ),
                                                child: Text(
                                                  "lbl_62".tr,
                                                  style: TextStyle(
                                                    color: theme.colorScheme
                                                        .errorContainer
                                                        .withOpacity(1),
                                                    fontSize: 12.fSize,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 12.h,
                                                  top: 1.v,
                                                ),
                                                child: Text(
                                                  "lbl_85200034211".tr,
                                                  style: TextStyle(
                                                    color: theme.colorScheme
                                                        .errorContainer
                                                        .withOpacity(1),
                                                    fontSize: 12.fSize,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                height: 18.adaptSize,
                                                width: 18.adaptSize,
                                                margin:
                                                    EdgeInsets.only(top: 1.v),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 4.h,
                                                  vertical: 6.v,
                                                ),
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder9,
                                                ),
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imageNotFound,
                                                  height: 6.v,
                                                  width: 7.h,
                                                  alignment:
                                                      Alignment.centerRight,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Opacity(
                                          opacity: 0.5,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 26.h),
                                            child: Text(
                                              "lbl_number_phone".tr,
                                              style: TextStyle(
                                                color: theme
                                                    .colorScheme.errorContainer
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
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 10.h,
                                    bottom: 20.v,
                                  ),
                                  child: Text(
                                    "msg_enter_phone_number".tr,
                                    style: TextStyle(
                                      color: theme.colorScheme.errorContainer
                                          .withOpacity(1),
                                      fontSize: 16.fSize,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 55.v),
                        CustomElevatedButton(
                          text: "lbl_send_via_sms".tr.toUpperCase(),
                          margin: EdgeInsets.only(left: 10.h),
                        ),
                        SizedBox(height: 16.v),
                        CustomElevatedButton(
                          text: "msg_send_via_whatsapp".tr.toUpperCase(),
                          margin: EdgeInsets.only(left: 10.h),
                          buttonStyle: CustomButtonStyles.fillOnPrimary,
                        ),
                        SizedBox(height: 71.v),
                        Container(
                          width: 227.h,
                          margin: EdgeInsets.only(
                            left: 27.h,
                            right: 30.h,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_by_creating_and_or2".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.errorContainer
                                        .withOpacity(1),
                                    fontSize: 11.fSize,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "msg_terms_conditions".tr,
                                  style: TextStyle(
                                    color: appTheme.redA10001,
                                    fontSize: 11.fSize,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style: TextStyle(
                                    color: appTheme.redA10001,
                                    fontSize: 11.fSize,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
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
}
