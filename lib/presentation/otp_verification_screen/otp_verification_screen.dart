import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobolo/core/app_export.dart';
import 'package:jobolo/widgets/app_bar/appbar_image.dart';
import 'package:jobolo/widgets/app_bar/appbar_title.dart';
import 'package:jobolo/widgets/app_bar/custom_app_bar.dart';
import 'package:jobolo/widgets/custom_elevated_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 26, bottom: 26),
                          decoration: AppDecoration.fill,
                          child: CustomAppBar(
                              height: getVerticalSize(25),
                              leadingWidth: 36,
                              leading: AppbarImage(
                                  height: getSize(20),
                                  width: getSize(20),
                                  svgPath: ImageConstant.imgArrowleftGray900,
                                  margin: getMargin(left: 16, bottom: 1),
                                  onTap: () {
                                    onTapArrowleft1(context);
                                  }),
                              centerTitle: true,
                              title: AppbarTitle(text: "Forget Password"))),
                      Container(
                          padding: getPadding(
                              left: 16, top: 19, right: 16, bottom: 19),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 4),
                                        child: Text(
                                            "Enter Code that has been sent to ab.........com",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))),
                                Padding(
                                    padding: getPadding(
                                        left: 32, top: 21, right: 40),
                                    child: PinCodeTextField(
                                        appContext: context,
                                        length: 4,
                                        obscureText: false,
                                        obscuringCharacter: '*',
                                        keyboardType: TextInputType.number,
                                        autoDismissKeyboard: true,
                                        enableActiveFill: true,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        onChanged: (value) {},
                                        textStyle: TextStyle(
                                            color: appTheme.black900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Graphik',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.5)),
                                        pinTheme: PinTheme(
                                            fieldHeight: getHorizontalSize(59),
                                            fieldWidth: getHorizontalSize(59),
                                            shape: PinCodeFieldShape.box,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5)),
                                            selectedFillColor: theme
                                                .colorScheme.primary
                                                .withOpacity(0.14),
                                            activeFillColor: theme
                                                .colorScheme.primary
                                                .withOpacity(0.14),
                                            inactiveFillColor: theme
                                                .colorScheme.primary
                                                .withOpacity(0.14),
                                            inactiveColor:
                                                theme.colorScheme.primary,
                                            selectedColor:
                                                theme.colorScheme.primary,
                                            activeColor:
                                                theme.colorScheme.primary))),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Text("Resend code in 50 sec",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallBlack900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                CustomElevatedButton(
                                    text: "Verify",
                                    margin: getMargin(top: 20, bottom: 5),
                                    buttonStyle: CustomButtonStyles.fillPrimary
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(double.maxFinite,
                                                        getVerticalSize(57)))),
                                    buttonTextStyle:
                                        theme.textTheme.titleSmall!,
                                    onTap: () {
                                      onTapVerify(context);
                                    })
                              ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the otpVerificationAndNewPasswordScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the otpVerificationAndNewPasswordScreen.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVerificationAndNewPasswordScreen);
  }
}
