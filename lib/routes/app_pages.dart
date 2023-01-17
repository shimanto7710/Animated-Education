import 'package:animated_education/routes/routes.dart';
import 'package:get/get.dart';

import '../ui/splash_screen.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.splash;

  static appRoutes() => [
    /*GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),*/
    GetPage(
      name: Routes.splash,
      page: () => const SplashView()
    ),
  ];
}
