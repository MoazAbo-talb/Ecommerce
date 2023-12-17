import 'package:ecommerce/controller/localcontroller.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/test.dart';
import 'package:ecommerce/view/screens/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
      ),
      // home: const Test(),
        home: const Language(),
      routes: routes,
    );
  }
}
