import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail() {}
  goToverfiyCodeSignUp(){}
}

class CheckEmailControllerImp extends CheckEmailController {
    late TextEditingController email; 

  @override
  checkEmail() {}

  @override
  goToverfiyCodeSignUp() {
    Get.offNamed(AppRoutes.verfiyCodeSignUp);
  }

  @override
  void onInit() {
    super.onInit(); 
    email = TextEditingController(); 
  }

  @override
  void dispose() {
    super.dispose(); 
    email.dispose(); 
  }
}
