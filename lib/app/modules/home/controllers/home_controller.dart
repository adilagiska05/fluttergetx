import 'dart:async';

import 'package:get/get.dart';
import 'package:mobile_project/app/modules/login/views/login_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  late Timer _pindah;


  @override
  void onInit() {
    _pindah = Timer.periodic(
      const Duration(seconds: 4),
      (timer) => Get.off(
        () =>  LoginView(),
        transition: Transition.leftToRight,
      ),
    );
    super.onInit();

  }

  @override
  void onReady() {
    _pindah.cancel();
    super.onReady();
  }

  @override
  void onClose() {}
 
}
