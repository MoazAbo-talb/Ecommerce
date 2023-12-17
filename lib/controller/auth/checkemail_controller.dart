import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail() {}
  goToSuccessSignUp(){}
}

class CheckEmailControllerImp extends CheckEmailController {
    late TextEditingController email; 

  @override
  checkEmail() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
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
