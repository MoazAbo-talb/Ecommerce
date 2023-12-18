import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../controller/auth/verfiycodesignup_controller.dart';
import '../../widgets/widget/auth/customtextbodyauth.dart';
import '../../widgets/widget/auth/customtexttitleauth.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerfiyCodeSignUpControllerImp controller = Get.put(VerfiyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: const Text(
          'Verification Code',
          style: TextStyle(
              color: Colors.grey, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check code"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(text: "Please Enter The Digital Code"),
          const SizedBox(height: 25),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: AppColor.primaryColor,
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goTosuccessSignUp();
            }, // end onSubmit
          ),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
