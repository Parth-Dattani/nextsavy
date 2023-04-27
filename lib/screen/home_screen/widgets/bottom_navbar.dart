import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/constant.dart';

Widget bottomNavBar({ tabIndex,  changeTabIndex, context}) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: tabIndex,
    selectedItemColor: ColorConfig.colorBlue,
    selectedFontSize: 14,
    unselectedFontSize: 14,
    elevation: 25,
    onTap:       changeTabIndex,
    items: [
      BottomNavigationBarItem(
        label: 'Country'.tr,
        icon: const Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Icon(Icons.flag),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Form'.tr,
        icon: const Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Icon(Icons.format_align_center_outlined),
        ),
      ),
      BottomNavigationBarItem(
        label: 'webView'.tr,
        icon: const Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Icon(Icons.web),
        ),
      ),
    ],
  );
}
