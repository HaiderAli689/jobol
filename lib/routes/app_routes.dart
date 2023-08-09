import 'package:flutter/material.dart';
import 'package:jobolo/presentation/splash_screen/splash_screen.dart';
import 'package:jobolo/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:jobolo/presentation/sign_in_when_wrong_screen/sign_in_when_wrong_screen.dart';
import 'package:jobolo/presentation/sign_up_form_for_user_screen/sign_up_form_for_user_screen.dart';
import 'package:jobolo/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:jobolo/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:jobolo/presentation/otp_verification_and_new_password_screen/otp_verification_and_new_password_screen.dart';
import 'package:jobolo/presentation/direct_store_or_browse_screen/direct_store_or_browse_screen.dart';
import 'package:jobolo/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signInWhenWrongScreen = '/sign_in_when_wrong_screen';

  static const String signUpFormForUserScreen = '/sign_up_form_for_user_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String otpVerificationAndNewPasswordScreen =
      '/otp_verification_and_new_password_screen';

  static const String directStoreOrBrowseScreen =
      '/direct_store_or_browse_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    signInScreen: (context) => SignInScreen(),
    signInWhenWrongScreen: (context) => SignInWhenWrongScreen(),
    signUpFormForUserScreen: (context) => SignUpFormForUserScreen(),
    forgetPasswordScreen: (context) => ForgetPasswordScreen(),
    otpVerificationScreen: (context) => OtpVerificationScreen(),
    otpVerificationAndNewPasswordScreen: (context) =>
        OtpVerificationAndNewPasswordScreen(),
    directStoreOrBrowseScreen: (context) => DirectStoreOrBrowseScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
