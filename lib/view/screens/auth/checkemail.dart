import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../controller/auth/checkemail_controller.dart';
import '../../widgets/widget/auth/custombuttonauth.dart';
import '../../widgets/widget/auth/customtextbodyauth.dart';
import '../../widgets/widget/auth/customtextformauth.dart';
import '../../widgets/widget/auth/customtexttitleauth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: const Text(
          'Check Email',
          style: TextStyle(
              color: Colors.grey, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check Email"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Please Enter  Your Email Address To Recive A Verification Code "),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustomButtomAuth(
              text: "Check",
              onPressed: () {
                controller.goToSuccessSignUp();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
