import 'package:get/get.dart';

import 'package:mobile_project/app/modules/dasboard/bindings/dasboard_binding.dart';
import 'package:mobile_project/app/modules/dasboard/views/dasboard_view.dart';
import 'package:mobile_project/app/modules/home/bindings/home_binding.dart';
import 'package:mobile_project/app/modules/home/views/home_view.dart';
import 'package:mobile_project/app/modules/login/bindings/login_binding.dart';
import 'package:mobile_project/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASBOARD,
      page: () => DasboardView(),
      binding: DasboardBinding(),
    ),
  ];
}
