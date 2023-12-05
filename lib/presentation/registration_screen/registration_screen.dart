import 'bloc/registration_bloc.dart';
import 'models/registration_model.dart';
import 'package:flutter/material.dart';
import 'package:srijani_s_application1/core/app_export.dart';
import 'package:srijani_s_application1/widgets/custom_elevated_button.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RegistrationBloc>(
      create: (context) => RegistrationBloc(RegistrationState(
        registrationModelObj: RegistrationModel(),
      ))
        ..add(RegistrationInitialEvent()),
      child: RegistrationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.blueGray50,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 235.v,
                      width: 202.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imageNotFound,
                            height: 202.adaptSize,
                            width: 202.adaptSize,
                            alignment: Alignment.topCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "lbl_flowa".tr,
                              style: TextStyle(
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                                fontSize: 24.fSize,
                                fontFamily: 'Titillium Web',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Container(
                    width: 284.h,
                    margin: EdgeInsets.only(right: 30.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_experience_the".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              fontSize: 45.fSize,
                              fontFamily: 'Titillium Web',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: "msg_easier_way_for_transaction".tr,
                            style: TextStyle(
                              color: appTheme.redA10002,
                              fontSize: 45.fSize,
                              fontFamily: 'Titillium Web',
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Container(
                    width: 243.h,
                    margin: EdgeInsets.only(
                      left: 3.h,
                      right: 69.h,
                    ),
                    child: Text(
                      "msg_connect_your_money".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: appTheme.gray60001,
                        fontSize: 17.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 91.v),
                  CustomElevatedButton(
                    text: "lbl_get_started".tr.toUpperCase(),
                    margin: EdgeInsets.only(
                      left: 16.h,
                      right: 13.h,
                    ),
                    alignment: Alignment.center,
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
