import 'package:get/get.dart';
import '../controller/controller.dart';

class FormBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<FormController>(FormController(), permanent: false);
  }

}