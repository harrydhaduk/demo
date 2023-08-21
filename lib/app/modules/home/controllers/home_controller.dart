import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/app/modules/home/views/home_view.dart';

class HomeController extends GetxController {
  RxList<int> countList = <int>[].obs;
  @override
  void onInit() {
    getIncrementData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

   increment({index}) {
    countList[index]++;
   }
  getIncrementData(){
    for(int i=0;i<=100;i++){
      countList.add(0);

    }
  }
}
