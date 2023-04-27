import 'package:get/get.dart';
import 'package:nextsavy/controller/web_controller.dart';
import '../controller/controller.dart';

class WebBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<WebController>(WebController(), permanent: false);
  }

}