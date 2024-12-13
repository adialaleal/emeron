import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:emeron/routes/app_routes.dart';
import 'package:emeron/features/home/domain/entities/menu.entity.dart';

class HomeController extends GetxController {
  
  RxString userEmail = ''.obs;
  RxString userDisplayName = ''.obs;
  RxString userUID = ''.obs;

  List<MenuEntity> menuList = [
    MenuEntity(
      icon: Icons.calendar_month,
      label: 'course_calendar'.tr,
      route: AppRoutes.calendar,
      external: false,
    ),
    MenuEntity(
      icon: Icons.edit,
      label: 'subscriptions'.tr,
      route: '',
      external: true,
    ),
    MenuEntity(
      icon: Icons.workspace_premium,
      label: 'certificates'.tr,
      route: AppRoutes.calendar,
      external: false,
    ),
    MenuEntity(
      icon: Icons.collections_bookmark,
      label: 'my_library'.tr,
      route: AppRoutes.calendar,
      external: false,
    ),
    MenuEntity(
      icon: Icons.local_library,
      label: 'virtual_environment'.tr,
      route: AppRoutes.library,
      external: true,
    ),
    MenuEntity(
      icon: Icons.language,
      label: 'emeron_web'.tr,
      route: '',
      external: true,
    ),
    MenuEntity(
      icon: Icons.chat,
      label: 'talk_to_us'.tr,
      route: '',
      external: true,
    ),
    MenuEntity(
      icon: Icons.admin_panel_settings,
      label: 'restricted_area'.tr,
      route: AppRoutes.auth,
      external: false,
    )
  ];
}
