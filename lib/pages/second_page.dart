import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/controllers/home_controller.dart';

class SecondPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text('clicks: ${controller.count}')),
      ),
    );
  }
}
