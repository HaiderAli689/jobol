import 'package:flutter/material.dart';
import 'package:jobolo/core/app_export.dart';
import 'package:jobolo/widgets/app_bar/appbar_image.dart';
import 'package:jobolo/widgets/app_bar/appbar_title.dart';
import 'package:jobolo/widgets/app_bar/custom_app_bar.dart';
import 'package:jobolo/widgets/custom_elevated_button.dart';
import 'package:jobolo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                          Container(
                              padding: getPadding(top: 26, bottom: 26),
                              decoration: AppDecoration.fill,
                              child: CustomAppBar(
                                  height: getVerticalSize(25),
                                  leadingWidth: 36,
                                  leading: AppbarImage(
                                      height: getSize(20),
                                      width: getSize(20),
                                      svgPath:
                                          ImageConstant.imgArrowleftGray900,
                                      margin: getMargin(left: 16, bottom: 1),
                                      onTap: () {
                                        onTapArrowleft(context);
                                      }),
                                  centerTitle: true,
                                  title: AppbarTitle(text: "Forget Password"))),
                          Container(
                              padding: getPadding(
                                  left: 16, top: 15, right: 16, bottom: 15),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(321),
                                        margin: getMargin(right: 22),
                                        child: Text(
                                            "Enter your registered email so we should help\nyou to reset password",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    CustomTextFormField(
                                        controller: emailController,
                                        margin: getMargin(top: 15),
                                        contentPadding: getPadding(
                                            top: 17, right: 30, bottom: 17),
                                        textStyle: theme.textTheme.bodySmall!,
                                        hintText: "Your Email",
                                        hintStyle: theme.textTheme.bodySmall!,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 16,
                                                top: 15,
                                                right: 14,
                                                bottom: 13),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdown)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(48)),
                                        obscureText: true,
                                        filled: true,
                                        fillColor: theme.colorScheme.onPrimary,
                                        defaultBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray30001,
                                        enabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray30001,
                                        focusedBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray30001,
                                        disabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray30001),
                                    CustomElevatedButton(
                                        text: "Continue",
                                        margin: getMargin(top: 13, bottom: 5),
                                        buttonStyle: CustomButtonStyles
                                            .fillPrimary
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        getVerticalSize(57)))),
                                        buttonTextStyle:
                                            theme.textTheme.titleSmall!,
                                        onTap: () {
                                          onTapContinue(context);
                                        })
                                  ]))
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the otpVerificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the otpVerificationScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVerificationScreen);
  }
}
