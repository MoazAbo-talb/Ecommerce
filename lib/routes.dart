import 'package:ecommerce/core/middleware/mymiddleware.dart';
import 'package:ecommerce/view/screens/auth/login.dart';
import 'package:ecommerce/view/screens/language.dart';
import 'package:ecommerce/view/screens/onboarding.dart';
import 'package:get/get.dart';

import 'core/constant/routes.dart';
import 'view/screens/auth/forgetpassword/forgetpassword.dart';
import 'view/screens/auth/forgetpassword/resetpassword.dart';
import 'view/screens/auth/signup.dart';
import 'view/screens/auth/forgetpassword/success_resetpassword.dart';
import 'view/screens/auth/forgetpassword/verifycode.dart';
import 'view/screens/auth/success_signup.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: '/', page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUp()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoutes.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoutes.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoutes.verfiyCodeSignUp, page: () => const VerfiyCode()),
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
];


//flutter route

// Map<String, Widget Function(BuildContext)> routess = {
//   //Auth
//   AppRoutes.login: (context) => const Login(),
//   AppRoutes.signUp: (context) => const SignUp(),
//   AppRoutes.forgetPassword: (context) => const ForgetPassword(),
//   AppRoutes.verfiyCode: (context) => const VerfiyCode(),
//   AppRoutes.resetPassword: (context) => const ResetPassword(),
//   AppRoutes.successResetpassword: (context) => const SuccessResetPassword(),
//   AppRoutes.successSignUp: (context) => const SuccessSignUp(),
//   AppRoutes.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
  
//   // OnBoarding
//   AppRoutes.onBoarding: (context) => const OnBoarding(),
// };
