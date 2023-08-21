import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
        init: HomeController(),
        autoRemove: true,
        assignId: true,
        builder: (context) {
          // controller.getIncrementData(ListElement: ListElement());
          return Scaffold(
              appBar: AppBar(
                title: const Text('HomeView'),
                centerTitle: true,
              ),
              body: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {

                  return ListElement(index: index);
                },
              ));
        });
  }

  Widget ListElement({index}) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Obx(
              () => Text(controller.countList[index].toString()),
            ),
            MaterialButton(
              onPressed: () {
                controller.increment(index: index);
              },
              child: const Text("+"),
            )
          ],
        ));
  }
}
