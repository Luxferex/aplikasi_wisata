import 'package:aplikasi_wisata/app/modules/maps/bindings/maps_bindings.dart';
import 'package:aplikasi_wisata/app/modules/maps/views/maps_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/registrasi/bindings/registrasi_binding.dart';
import '../modules/registrasi/views/registrasi_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRASI,
      page: () => registrasiView(),
      binding: RegistrasiBinding(),
    ),
    GetPage(
      name: _Paths.MAPS,
      page: () => MapsView(),
      binding: MapsBindings(),
    ),
  ];
}
