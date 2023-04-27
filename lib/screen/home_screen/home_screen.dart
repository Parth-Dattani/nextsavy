import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/constant.dart';
import '../../controller/controller.dart';
import '../../widgets/widgets.dart';
import '../screen.dart';
import 'widgets/widget.dart';

class HomeScreen extends GetView<HomeController>{
  static const pageId = "/HomeScreen";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
          ()=> CommonLoader(
        isLoad: controller.loader.value,
        body: Scaffold(
          backgroundColor: ColorConfig.colorWhite,
          body: SafeArea(
            child: Obx(
                  ()=> IndexedStack(
                sizing: StackFit.expand,
                index: controller.tabIndex.value,
                children: [
                  controller.countryList.isNotEmpty ?
                  const HomePageWidget() : Container(),
                  const FormScreen(),
                  const Center(child: Text("This is under Development")),
                ],
              ),
            ),
          ),
          bottomNavigationBar :
          Obx(()=> bottomNavBar(tabIndex: controller.tabIndex.value, changeTabIndex: controller.changeTabIndex, context: context)),
        ),
      ),
    );
  }
  
}

