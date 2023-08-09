import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobolo/core/app_export.dart';
import 'package:jobolo/widgets/custom_checkbox_button.dart';
import 'package:jobolo/widgets/custom_elevated_button.dart';
import 'package:jobolo/widgets/custom_text_form_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore_for_file: must_be_immutable
class OtpVerificationAndNewPasswordScreen extends StatelessWidget {
  OtpVerificationAndNewPasswordScreen({Key? key}) : super(key: key);

  bool isCheckbox = false;

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomElevatedButton(
                              text: "Forget Password",
                              leftIcon: Container(
                                  margin: getMargin(right: 30),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftGray900)),
                              buttonStyle: CustomButtonStyles.fillOnPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(78)))),
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumMedium_1,
                              onTap: () {
                                onTapForgetpassword(context);
                              }),
                          Padding(
                              padding: getPadding(left: 48, top: 22, right: 55),
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
                                      letterSpacing: getHorizontalSize(0.5)),
                                  pinTheme: PinTheme(
                                      fieldHeight: getHorizontalSize(59),
                                      fieldWidth: getHorizontalSize(59),
                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(5)),
                                      selectedFillColor:
                                          appTheme.lightGreen60023,
                                      activeFillColor: appTheme.lightGreen60023,
                                      inactiveFillColor:
                                          appTheme.lightGreen60023,
                                      inactiveColor: appTheme.lightGreen900,
                                      selectedColor: appTheme.lightGreen900,
                                      activeColor: appTheme.lightGreen900))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CustomCheckboxButton(
                                  alignment: Alignment.centerLeft,
                                  text: "OTP Verified",
                                  value: isCheckbox,
                                  margin: getMargin(top: 24),
                                  padding: getPadding(top: 1, bottom: 1),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  onChange: (value) {
                                    isCheckbox = value;
                                  })),
                          Padding(
                              padding: getPadding(left: 16, top: 41),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 7),
                                        child: SizedBox(
                                            width: getHorizontalSize(91),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray30001))),
                                    Padding(
                                        padding: getPadding(left: 8),
                                        child: Text("Create new password",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallGray400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.07)))),
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 7),
                                        child: SizedBox(
                                            width: getHorizontalSize(98),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: appTheme.gray30001,
                                                indent: getHorizontalSize(8))))
                                  ])),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(left: 18, top: 29, right: 14),
                              contentPadding: getPadding(top: 17, bottom: 17),
                              textStyle: theme.textTheme.bodySmall!,
                              hintText: "Password",
                              hintStyle: theme.textTheme.bodySmall!,
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 14, right: 14, bottom: 14),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 14, right: 16, bottom: 14),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgEye)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true),
                          CustomTextFormField(
                              controller: confirmpasswordController,
                              margin: getMargin(left: 18, top: 8, right: 14),
                              contentPadding: getPadding(top: 17, bottom: 17),
                              textStyle: theme.textTheme.bodySmall!,
                              hintText: "Confirm Password",
                              hintStyle: theme.textTheme.bodySmall!,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 14, right: 14, bottom: 14),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 16, bottom: 15),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgEye)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true),
                          CustomElevatedButton(
                              text: "Continue",
                              margin: getMargin(
                                  left: 16, top: 22, right: 16, bottom: 5),
                              buttonStyle: CustomButtonStyles.fillPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(57)))),
                              buttonTextStyle: theme.textTheme.titleSmall!)
                        ])))));
  }

  /// Navigates to the otpVerificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the otpVerificationScreen.
  onTapForgetpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVerificationScreen);
  }
}
