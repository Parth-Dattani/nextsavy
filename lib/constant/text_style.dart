import 'package:flutter/material.dart';
import 'color_config.dart';

class AppTextStyle{
  static const textFontSize18 = 18.0;
  static const textFontSize20 = 20.0;
  static const textFontSize24 = 24.0;
}

class CustomTextStyle{

  static TextStyle buttonText = const TextStyle(
      fontSize: AppTextStyle.textFontSize24,
      color: ColorConfig.colorWhite,
      fontWeight: FontWeight.w500
  );

  static TextStyle appBarText = const TextStyle(
    color: ColorConfig.colorWhite,
    fontSize: AppTextStyle.textFontSize24,
    fontWeight: FontWeight.w700,
    //height: 96
  );

  static TextStyle headingText = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: ColorConfig.colorBlack
  );

  static TextStyle descriptionText = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: ColorConfig.colorBlack
  );
}

