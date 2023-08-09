import 'package:flutter/material.dart';
import 'package:jobolo/core/app_export.dart';
import 'package:jobolo/widgets/custom_elevated_button.dart';
import 'package:jobolo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 18, right: 16, bottom: 18),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgFrame,
                              height: getVerticalSize(61),
                              width: getHorizontalSize(160),
                              margin: getMargin(top: 91)),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("Welcome to jobolo",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleMedium!.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                          Padding(
                              padding: getPadding(top: 7),
                              child: Text("Sign in to continue",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                          CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(top: 31),
                              contentPadding:
                                  getPadding(top: 17, right: 30, bottom: 17),
                              textStyle: theme.textTheme.bodySmall!,
                              hintText: "Your Email",
                              hintStyle: theme.textTheme.bodySmall!,
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 15, right: 14, bottom: 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              filled: true,
                              fillColor: theme.colorScheme.onPrimary,
                              defaultBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray30001,
                              enabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray30001,
                              focusedBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray30001,
                              disabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray30001),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(top: 8),
                              contentPadding: getPadding(top: 17, bottom: 17),
                              textStyle: theme.textTheme.bodySmall!,
                              hintText: "Password",
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
                                      left: 30, top: 14, right: 16, bottom: 14),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowleft)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true),
                          CustomElevatedButton(
                              text: "Sign In",
                              margin: getMargin(top: 16),
                              buttonStyle: CustomButtonStyles.fillPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(57)))),
                              buttonTextStyle: theme.textTheme.titleSmall!,
                              onTap: () {
                                onTapSignin(context);
                              }),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 15, right: 8),
                                      child: Text("Forgot Password?",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargePrimary)))),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveaaccount(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Don’t have a account?",
                                        style: theme.textTheme.bodySmall),
                                    TextSpan(
                                        text: "",
                                        style: theme.textTheme.labelLarge),
                                    TextSpan(
                                        text: "Sign up",
                                        style: CustomTextStyles
                                            .labelLargePrimaryMedium)
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  /// Navigates to the directStoreOrBrowseScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the directStoreOrBrowseScreen.
  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.directStoreOrBrowseScreen);
  }

  /// Navigates to the forgetPasswordScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the forgetPasswordScreen.
  onTapTxtForgotpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgetPasswordScreen);
  }

  /// Navigates to the signUpFormForUserScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the signUpFormForUserScreen.
  onTapTxtDonthaveaaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpFormForUserScreen);
  }
}
