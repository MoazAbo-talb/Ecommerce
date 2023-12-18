import 'package:ecommerce/view/screens/auth/checkemail.dart';
import 'package:ecommerce/view/screens/auth/login.dart';
import 'package:ecommerce/view/screens/auth/verifycodesignup.dart';
import 'package:ecommerce/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'core/constant/routes.dart';
import 'view/screens/auth/forgetpassword/forgetpassword.dart';
import 'view/screens/auth/forgetpassword/resetpassword.dart';
import 'view/screens/auth/signup.dart';
import 'view/screens/auth/forgetpassword/success_resetpassword.dart';
import 'view/screens/auth/forgetpassword/verifycode.dart';
import 'view/screens/auth/success_signup.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signUp: (context) => const SignUp(),
  AppRoutes.forgetPassword: (context) => const ForgetPassword(),
  AppRoutes.verfiyCode: (context) => const VerfiyCode(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  AppRoutes.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoutes.successSignUp: (context) => const SuccessSignUp(),
  AppRoutes.checkemail: (context) => const CheckEmail(),
  AppRoutes.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
  
  // OnBoarding
  AppRoutes.onBoarding: (context) => const OnBoarding(),
};
