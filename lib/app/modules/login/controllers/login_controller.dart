// ignore_for_file: non_constant_identifier_names, unused_local_variable, unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile_project/app/modules/dasboard/views/dasboard_view.dart';
import 'package:mobile_project/app/utils/api.dart';

class LoginController extends GetxController {
  // ignore: todo
  //TODO: Implement LoginController
  final _getConnect = GetConnect();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final authToken = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  void loginNow() async {
    LoginController controller = Get.put(LoginController());
    final Response = await _getConnect.post(BaseUrl.auth, {
      'email': emailController.text,
      'password': passwordController.text,
    });

    if (Response.body['success'] == true) {
      authToken.write('token', Response.body['access_token']);
      authToken.write('full_name', Response.body['full_name']);
      Get.offAll(() => DasboardView());
    } else {
      Get.snackbar(
        'Error',
        Response.body['message'].toString(),
        icon: const Icon(Icons.error),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        forwardAnimationCurve: Curves.bounceIn,
        margin: const EdgeInsets.only(
          top: 10,
          left: 5,
          right: 5,
        ),
      );
    }
  }
}
