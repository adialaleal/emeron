import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:emeron/routes/app_pages.dart';
import 'package:emeron/routes/app_routes.dart';
import 'package:emeron/core/i18n/app_i18n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:emeron/core/enviroment/env.config.dart';
import 'package:emeron/core/services/di/service.binding.dart';

void main() async {
  Get.put(EnvConfig());
  await Get.find<EnvConfig>().initConfig(environment: Environment.emeronHomolog);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
      initialBinding: ServiceBindings(),
      translations: AppLocalization(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('pt', 'BR'),
      debugShowCheckedModeBanner: false,
    );
  }
}
