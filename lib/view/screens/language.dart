import 'package:ecommerce/controller/localcontroller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/widgets/language/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '1'.tr,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonLang(
            textbutton: "AR",
            onPressed: () {
              controller.changing('ar');
              Get.toNamed(AppRoutes.onBoarding);
            },
          ),
          CustomButtonLang(
            textbutton: "EN",
            onPressed: () {
              controller.changing('en');
              Get.toNamed(AppRoutes.onBoarding);
            },
          ),
        ],
      ),
    );
  }
}
