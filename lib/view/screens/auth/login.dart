import 'package:ecommerce/core/function/alertexit.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/color.dart';
import '../../widgets/widget/auth/custombuttonauth.dart';
import '../../widgets/widget/auth/customtextbodyauth.dart';
import '../../widgets/widget/auth/customtextformauth.dart';
import '../../widgets/widget/auth/customtexttitleauth.dart';
import '../../widgets/widget/auth/logoauth.dart';
import '../../widgets/widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('26'.tr,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(children: [
              const LogoAuth(),
              const SizedBox(height: 20),
              CustomTextTitleAuth(text: "10".tr),
              const SizedBox(height: 10),
              CustomTextBodyAuth(text: "11".tr),
              const SizedBox(height: 15),
              CustomTextFormAuth(
                valid: (val) {
                  return validInput(val!, 5, 100, 'email');
                },
                isNumber: false,
                mycontroller: controller.email,
                hinttext: "12".tr,
                iconData: Icons.email_outlined,
                labeltext: "18".tr,
              ),
              GetBuilder<LoginControllerImp>(
                builder: (controller) => CustomTextFormAuth(
                  obscureText: controller.isshowpassword,
                  onTapIcon: () {
                    controller.showPassword();
                  },
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 30, "password");
                  },

                  mycontroller: controller.password,
                  hinttext: "13".tr,
                  iconData: Icons.lock_outline,
                  labeltext: "19".tr,
                  // mycontroller: ,
                ),
              ),
              InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: Text(
                  "14".tr,
                  textAlign: TextAlign.right,
                ),
              ),
              CustomButtomAuth(
                  text: "15".tr,
                  onPressed: () {
                    controller.login();
                  }),
              const SizedBox(height: 40),
              CustomTextSignUpOrSignIn(
                textone: "16".tr,
                texttwo: "17".tr,
                onTap: () {
                  controller.goToSignUp();
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
