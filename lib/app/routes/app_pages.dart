import 'package:animated_education/app/modules/splash_screen.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/detail_binding.dart';
import '../modules/home/views/detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
    ),
  ];
}
