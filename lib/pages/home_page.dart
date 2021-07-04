import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/controllers/home_controller.dart';
import 'package:getx_counter/pages/second_page.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('clicks: ${controller.count}')),
            ElevatedButton(
                onPressed: () {
                  print('Next is pressed');
                  Get.toNamed('/second');
                },
                child: Text('Next Page'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}
