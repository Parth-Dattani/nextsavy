import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextsavy/controller/controller.dart';
import '../../constant/constant.dart';
import '../../widgets/widgets.dart';

class FormScreen extends GetView<FormController>{
  static const pageId = "/FormScreen";

  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:  CommonAppBar(
        title: "Form Screen",
        leadingOnTap: (){
        }, ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: controller.formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
                  child: Column(
                    children: [
                      const SizedBox(height: 15,),
                      SizedBox(
                        height: Get.height / 2,
                        child: TextField(
                          cursorColor: Colors.red,
                          maxLines: Get.height ~/ 2,
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Enter Your Address',
                            fillColor: ColorConfig.colorBlur,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: ColorConfig.colorBlack,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: ColorConfig.colorWhite,
                              backgroundColor: ColorConfig.colorGreen,
                              minimumSize: const Size(100, 40),
                            ),
                            onPressed: () {},
                            child: const Text('Edit'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: ColorConfig.colorWhite,
                              backgroundColor: ColorConfig.colorBlue,
                              minimumSize: const Size(100, 40),
                            ),
                            onPressed: () {},
                            child: const Text('Save'),
                          ),
                        ],
                      ),

                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}