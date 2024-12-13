import 'package:get/get.dart';
import 'package:emeron/routes/app_routes.dart';
import 'package:emeron/features/auth/core/bindings/auth.binding.dart';
import 'package:emeron/features/home/core/bindings/home.binding.dart';
import 'package:emeron/features/auth/presentation/pages/auth.page.dart';
import 'package:emeron/features/home/presentation/pages/home.page.dart';
import 'package:emeron/features/splash/core/bindings/splash.binding.dart';
import 'package:emeron/features/library/core/bindings/library.binding.dart';
import 'package:emeron/features/splash/presentation/pages/splash.page.dart';
import 'package:emeron/features/library/presentation/pages/library.page.dart';
import 'package:emeron/features/calendar/core/bindings/calendar.binding.dart';
import 'package:emeron/features/calendar/presentation/pages/calendar.page.dart';
import 'package:emeron/features/certificates/core/bindings/certificate.binding.dart';
import 'package:emeron/features/certificates/presentation/pages/certificates.page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(name: AppRoutes.auth, page: () => AuthPage(), binding: AuthBinding()),
    GetPage(
      name: AppRoutes.calendar,
      page: () => CalendarPage(),
      binding: CalendarBinding(),
    ),
    GetPage(
      name: AppRoutes.certificates,
      page: () => CertificatePage(),
      binding: CertificatesBinding(),
    ),
    GetPage(
      name: AppRoutes.library,
      page: () => LibraryPage(),
      binding: LibraryBinding(),
    ),
  ];
}
