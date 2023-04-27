import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/constant.dart';
import '../../../controller/home_controller.dart';
import '../../../widgets/widgets.dart';

class HomePageWidget extends StatelessWidget {


  static final controller = Get.find<HomeController>();

  const HomePageWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          ()=> CommonLoader(
        isLoad: controller.loader.value,
        body : Scaffold(
          key: controller.scaffoldKey,
          appBar:  CommonAppBar(
            title: "Home Screen",
            // leadingIcon: ImagePath.drawerIcon,
            leadingOnTap: (){
            }, ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Country", style: CustomTextStyle.headingText,),
                  const SizedBox(height: 15,),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Row(children: [
                          SizedBox(
                              height: Get.height*0.15,width: Get.width* 0.30,
                              child:
                              Image.asset(controller.countryList[index].assetImage.toString())
                          ),
                          const SizedBox(width: 5,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.countryList[index].name.toString(),
                                  style: CustomTextStyle.headingText,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                Text(
                                  controller.countryList[index].description.toString(),
                                  style: CustomTextStyle.descriptionText,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),

                              ],
                            ),
                          ),
                        ]);
                      },
                      separatorBuilder: (context, index) => Container(height: 15,),
                      itemCount: controller.countryList.length,
                      shrinkWrap: true,
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              color: ColorConfig.colorGreen,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("@parth", textAlign: TextAlign.center,),
            ),
          ),
        ),
      ),
    );
  }
}
