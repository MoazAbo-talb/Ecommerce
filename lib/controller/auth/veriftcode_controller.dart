import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  verifyCode();
  goToResetPass();
}

class VerfiyCodeControllerImp extends VerifyCodeController {
  String? verifycode;
  @override
  verifyCode() {}

  @override
  goToResetPass() {
    Get.offNamed(AppRoutes.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }


}
