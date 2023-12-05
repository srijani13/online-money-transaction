import 'bloc/congratulation_bloc.dart';
import 'models/congratulation_model.dart';
import 'package:flutter/material.dart';
import 'package:srijani_s_application1/core/app_export.dart';
import 'package:srijani_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class CongratulationDialog extends StatelessWidget {
  const CongratulationDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CongratulationBloc>(
      create: (context) => CongratulationBloc(CongratulationState(
        congratulationModelObj: CongratulationModel(),
      ))
        ..add(CongratulationInitialEvent()),
      child: CongratulationDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 333.h,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 49.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 67.v,
              width: 232.h,
              margin: EdgeInsets.only(right: 13.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imageNotFound,
                    height: 7.v,
                    width: 14.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 101.h,
                      bottom: 23.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.8,
                      child: SizedBox(
                        width: 232.h,
                        child: Text(
                          "msg_congratulation".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
                ],
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Opacity(
            opacity: 0.3,
            child: SizedBox(
              width: 183.h,
              child: Text(
                "msg_start_using_the".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: theme.colorScheme.errorContainer,
                  fontSize: 11.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imageNotFound,
                height: 108.adaptSize,
                width: 108.adaptSize,
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 57.v,
                  bottom: 47.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(
                    1.h,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 65.v),
          CustomElevatedButton(
            text: "lbl_start".tr.toUpperCase(),
          ),
          SizedBox(height: 74.v),
        ],
      ),
    );
  }
}
