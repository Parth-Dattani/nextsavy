import 'dart:async';
import 'package:get/get.dart';
import '../screen/screen.dart';
import 'controller.dart';

class SplashController extends BaseController {
  void errorHandler(e) {}

  @override
  void onInit() {
    Timer(const Duration(seconds: 5), navigateTo);
    super.onInit();
  }

  void navigateTo() async {
    return Get.offAndToNamed(HomeScreen.pageId);
  }
}
