import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wecare/models/donate_model.dart';

class DonationController extends GetxController {
  dynamic flag = "🇺🇸";
  dynamic symbol = "\$";

  void countryFlag(newFlag, newSymbol) {
    flag = newFlag;
    symbol = newSymbol;
    update();
  }
}

class DonorTypeController extends GetxController {
  List<DonorType> donor = [
    DonorType("Donate Once", Colors.white),
    DonorType("Donate Monthly", Colors.white)
  ];

  void isType(index) {
    //selected = index;
    if (index == 0) {
      donor[0].color = Colors.purple;
      donor[1].color = Colors.white;
    } else if (index == 1) {
      donor[1].color = Colors.purple;
      donor[0].color = Colors.white;
    }
    update();
  }
}
