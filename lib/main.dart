import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tanda_kita/presentation/binding/initial.dart';
import 'package:tanda_kita/presentation/route/app_page.dart';
import 'package:tanda_kita/presentation/route/app_routes.dart';
import 'package:tanda_kita/presentation/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tanda Kita',
      defaultTransition: Transition.fade,
      debugShowCheckedModeBanner: false,
      getPages: appPage,
      theme: CustomTheme().light(),
      initialBinding: InitialBinding(),
      initialRoute: AppRoutes.initialRoute,
    );
  }
}
