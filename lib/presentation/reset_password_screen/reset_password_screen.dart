import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:srijani_s_application1/core/app_export.dart';
import 'package:srijani_s_application1/widgets/custom_elevated_button.dart';
import 'package:srijani_s_application1/widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
      create: (context) => ResetPasswordBloc(ResetPasswordState(
        resetPasswordModelObj: ResetPasswordModel(),
      ))
        ..add(ResetPasswordInitialEvent()),
      child: ResetPasswordScreen(),
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
            vertical: 19.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 3.v),
              Container(
                width: 333.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 38.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder32,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imageNotFound,
                      height: 2.v,
                      width: 32.h,
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(height: 33.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 108.v,
                        width: 131.h,
                        margin: EdgeInsets.only(right: 44.h),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 108.v,
                                width: 130.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 108.adaptSize,
                                        width: 108.adaptSize,
                                        decoration: BoxDecoration(
                                          color: appTheme.blue50,
                                          borderRadius: BorderRadius.circular(
                                            54.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imageNotFound,
                                      height: 75.v,
                                      width: 117.h,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(bottom: 8.v),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 68.v,
                                        width: 51.h,
                                        margin: EdgeInsets.only(left: 32.h),
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imageNotFound,
                                              height: 68.v,
                                              width: 45.h,
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 6.h,
                                                  vertical: 1.v,
                                                ),
                                                decoration: AppDecoration
                                                    .gradientBlueToBlue
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder9,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 2.v),
                                                    Text(
                                                      "lbl3".tr,
                                                      style: TextStyle(
                                                        color: theme.colorScheme
                                                            .primary,
                                                        fontSize: 12.fSize,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        height: 20.v,
                                        width: 39.h,
                                        margin: EdgeInsets.only(
                                          left: 11.h,
                                          bottom: 22.v,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Opacity(
                                              opacity: 0.5,
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  height: 17.v,
                                                  width: 28.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.blue20087,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      3.h,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: appTheme.gray50,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    color: theme.colorScheme
                                                        .primaryContainer,
                                                    width: 1.h,
                                                  ),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder3,
                                                ),
                                                child: Container(
                                                  height: 16.v,
                                                  width: 37.h,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 2.h,
                                                    vertical: 4.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlinePrimaryContainer
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder3,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 12.h),
                                                          child: Text(
                                                            "lbl2".tr,
                                                            style: TextStyle(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onSecondaryContainer,
                                                              fontSize: 3.fSize,
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: SizedBox(
                                                          height: 4.v,
                                                          width: 28.h,
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child:
                                                                    Container(
                                                                  height: 3
                                                                      .adaptSize,
                                                                  width: 3
                                                                      .adaptSize,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              5.h),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .onPrimary
                                                                          .withOpacity(
                                                                              1),
                                                                      width:
                                                                          1.h,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          4.v,
                                                                      width:
                                                                          3.h,
                                                                      child:
                                                                          Stack(
                                                                        alignment:
                                                                            Alignment.topRight,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            child:
                                                                                Container(
                                                                              height: 3.adaptSize,
                                                                              width: 3.adaptSize,
                                                                              decoration: BoxDecoration(
                                                                                border: Border.all(
                                                                                  color: theme.colorScheme.onPrimary.withOpacity(1),
                                                                                  width: 1.h,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.only(right: 1.h),
                                                                              child: Text(
                                                                                "lbl4".tr,
                                                                                style: TextStyle(
                                                                                  color: theme.colorScheme.errorContainer.withOpacity(1),
                                                                                  fontSize: 3.fSize,
                                                                                  fontFamily: 'Roboto',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          4.v,
                                                                      width:
                                                                          3.h,
                                                                      child:
                                                                          Stack(
                                                                        alignment:
                                                                            Alignment.topRight,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            child:
                                                                                Container(
                                                                              height: 3.adaptSize,
                                                                              width: 3.adaptSize,
                                                                              decoration: BoxDecoration(
                                                                                border: Border.all(
                                                                                  color: theme.colorScheme.onPrimary.withOpacity(1),
                                                                                  width: 1.h,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.only(right: 1.h),
                                                                              child: Text(
                                                                                "lbl4".tr,
                                                                                style: TextStyle(
                                                                                  color: theme.colorScheme.errorContainer.withOpacity(1),
                                                                                  fontSize: 3.fSize,
                                                                                  fontFamily: 'Roboto',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height: 3
                                                                          .adaptSize,
                                                                      width: 3
                                                                          .adaptSize,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border:
                                                                            Border.all(
                                                                          color: theme
                                                                              .colorScheme
                                                                              .onPrimary
                                                                              .withOpacity(1),
                                                                          width:
                                                                              1.h,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          4.v,
                                                                      width:
                                                                          3.h,
                                                                      child:
                                                                          Stack(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child:
                                                                                Container(
                                                                              height: 3.adaptSize,
                                                                              width: 3.adaptSize,
                                                                              decoration: BoxDecoration(
                                                                                border: Border.all(
                                                                                  color: theme.colorScheme.onPrimary.withOpacity(1),
                                                                                  width: 1.h,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.only(left: 1.h),
                                                                              child: Text(
                                                                                "lbl2".tr,
                                                                                style: TextStyle(
                                                                                  color: theme.colorScheme.onSecondaryContainer,
                                                                                  fontSize: 3.fSize,
                                                                                  fontFamily: 'Roboto',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      "lbl2".tr,
                                                                      style:
                                                                          TextStyle(
                                                                        color: theme
                                                                            .colorScheme
                                                                            .onSecondaryContainer,
                                                                        fontSize:
                                                                            3.fSize,
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          4.v,
                                                                      width:
                                                                          3.h,
                                                                      child:
                                                                          Stack(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child:
                                                                                Container(
                                                                              height: 3.adaptSize,
                                                                              width: 3.adaptSize,
                                                                              decoration: BoxDecoration(
                                                                                border: Border.all(
                                                                                  color: theme.colorScheme.onPrimary.withOpacity(1),
                                                                                  width: 1.h,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.only(left: 1.h),
                                                                              child: Text(
                                                                                "lbl2".tr,
                                                                                style: TextStyle(
                                                                                  color: theme.colorScheme.onSecondaryContainer,
                                                                                  fontSize: 3.fSize,
                                                                                  fontFamily: 'Roboto',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
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
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(top: 27.v),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(
                                    9.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Opacity(
                        opacity: 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(right: 57.h),
                          child: Text(
                            "lbl_reset_password".tr,
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
                    SizedBox(height: 8.v),
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
                    SizedBox(height: 58.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      child: BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                        builder: (context, state) {
                          return CustomTextFormField(
                            controller: state.group35Controller,
                            hintText: "lbl_new_password".tr,
                            suffix: InkWell(
                              onTap: () {
                                context.read<ResetPasswordBloc>().add(
                                    ChangePasswordVisibilityEvent(
                                        value: !state.isShowPassword));
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 28.v, 18.h, 25.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: 15.v,
                                  width: 20.h,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 68.v,
                            ),
                            obscureText: state.isShowPassword,
                            contentPadding: EdgeInsets.only(left: 26.h),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      child: BlocSelector<ResetPasswordBloc, ResetPasswordState,
                          TextEditingController?>(
                        selector: (state) => state.group34Controller,
                        builder: (context, group34Controller) {
                          return CustomTextFormField(
                            controller: group34Controller,
                            hintText: "lbl_reset_password".tr,
                            textInputAction: TextInputAction.done,
                            obscureText: true,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 26.h),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 67.v),
                    CustomElevatedButton(
                      text: "lbl_submiting".tr.toUpperCase(),
                      margin: EdgeInsets.symmetric(horizontal: 4.h),
                    ),
                    SizedBox(height: 67.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
