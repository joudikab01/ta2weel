import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils{
  static double phoneSize(double hardSize, {required bool height}) {
    double res;
    if (height) {
      double temp = 1090 / hardSize;
      res = MediaQuery.of(Get.context!).size.height / temp;
    } else {
      double temp = 390 / hardSize;
      res = MediaQuery.of(Get.context!).size.width / temp;
    }
    return res;
  }
}