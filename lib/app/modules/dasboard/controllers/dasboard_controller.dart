import 'package:get/get.dart';

class DasboardController extends GetxController {
  //TODO: Implement DasboardController

  final _getConnect = GetConnect();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
