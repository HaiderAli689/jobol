import 'package:flutter/material.dart';
import 'package:jobolo/core/app_export.dart';
import 'package:jobolo/widgets/custom_elevated_button.dart';
import 'package:jobolo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpFormForUserScreen extends StatelessWidget {
  SignUpFormForUserScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController addressController = TextEditingController();

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
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 15, top: 18, right: 15, bottom: 18),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgFrame,
                              height: getVerticalSize(61),
                              width: getHorizontalSize(160),
                              margin: getMargin(top: 10)),
                          Padding(
                              padding: getPadding(top: 28),
                              child: Text("Let’s Get Started",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleMedium!.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                          Padding(
                              padding: getPadding(top: 7),
                              child: Text("Create an new account",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                          Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 14),
                              color: appTheme.gray300,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder41),
                              child: Container(
                                  height: getSize(83),
                                  width: getSize(83),
                                  padding: getPadding(all: 26),
                                  decoration: AppDecoration.fill1.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder41),
                                  child: Stack(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCamera,
                                        height: getSize(29),
                                        width: getSize(29),
                                        alignment: Alignment.topRight)
                                  ]))),
                          CustomTextFormField(
                              controller: nameController,
                              margin: getMargin(top: 16),
                              contentPadding:
                                  getPadding(top: 17, right: 12, bottom: 17),
                              textStyle: theme.textTheme.bodySmall!,
                              hintText: "Enter Name",
                              hintStyle: theme.textTheme.bodySmall!,
                              textInputAction: TextInputAction.next,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 14, right: 12, bottom: 14),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
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
                              controller: emailController,
                              margin: getMargin(top: 8),
                              contentPadding:
                                  getPadding(top: 17, right: 30, bottom: 17),
                              textStyle: theme.textTheme.bodySmall!,
                              hintText: "Email",
                              hintStyle: theme.textTheme.bodySmall!,
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 19, top: 13, right: 11, bottom: 15),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48))),
                          CustomTextFormField(
                              controller: phoneController,
                              margin: getMargin(top: 8),
                              contentPadding:
                                  getPadding(top: 17, right: 30, bottom: 17),
                              textStyle: theme.textTheme.bodySmall!,
                              hintText: "Phone No",
                              hintStyle: theme.textTheme.bodySmall!,
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.phone,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 18, top: 15, right: 12, bottom: 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCall)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48))),
                          CustomTextFormField(
                              controller: addressController,
                              margin: getMargin(top: 8),
                              contentPadding: getPadding(top: 17, bottom: 17),
                              textStyle: theme.textTheme.bodySmall!,
                              hintText: "Address",
                              hintStyle: theme.textTheme.bodySmall!,
                              textInputAction: TextInputAction.next,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 19, top: 14, right: 11, bottom: 14),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLocation)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 11, right: 16, bottom: 17),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgSearch)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48))),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(top: 8),
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
                                      left: 30, top: 12, right: 16, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgEye)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true),
                          CustomTextFormField(
                              controller: confirmpasswordController,
                              margin: getMargin(top: 8),
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
                                      left: 30, top: 17, right: 16, bottom: 11),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgEye)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true),
                          CustomElevatedButton(
                              text: "Sign Up",
                              margin: getMargin(top: 23),
                              buttonStyle: CustomButtonStyles.fillPrimary
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              getVerticalSize(57)))),
                              buttonTextStyle: theme.textTheme.titleSmall!,
                              onTap: () {
                                onTapSignup(context);
                              }),
                          GestureDetector(
                              onTap: () {
                                onTapTxtHaveanaccount(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 52),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Have an account?",
                                            style: theme.textTheme.bodySmall),
                                        TextSpan(
                                            text: "",
                                            style: theme.textTheme.labelLarge),
                                        TextSpan(
                                            text: "Sign In",
                                            style: CustomTextStyles
                                                .labelLargePrimaryMedium)
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  /// Navigates to the directStoreOrBrowseScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the directStoreOrBrowseScreen.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.directStoreOrBrowseScreen);
  }

  /// Navigates to the signInWhenWrongScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the signInWhenWrongScreen.
  onTapTxtHaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInWhenWrongScreen);
  }
}
