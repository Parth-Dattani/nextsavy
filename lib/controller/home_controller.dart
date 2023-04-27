import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nextsavy/model/country_response.dart';
import 'controller.dart';

class HomeController extends BaseController {
  Rx<CountryResponse> countryResponse = CountryResponse().obs;
  RxList<CountryList> countryList = <CountryList>[].obs;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    getCountryList();
    super.onInit();
  }

  void getCountryList() async {
    loader.value = true;

    try {
      final String response = await rootBundle.loadString('assets/local/continent_country.json');
      final data = await json.decode(response);

      data['North America & Europe'].map((e) {
        e['assetImages'] = "assets/images/${e['image']}.png";
        countryList.add(CountryList.fromJson(e));
      }).toList();

      data['Asia'].map((e) {
        e['assetImages'] = "assets/images/${e['image']}.png";
        countryList.add(CountryList.fromJson(e));
      }).toList();

      debugPrint('${countryList.length}');


      loader.value = false;
    } catch (e) {
      debugPrint("Error :- ${e.toString()}");
      loader.value = false;
    }
  }
}
