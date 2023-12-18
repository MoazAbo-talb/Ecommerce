
import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  verifyCode();
  goTosuccessSignUp();
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
  String? verifycode;
  @override
  verifyCode() {}

  @override
  goTosuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }


}
