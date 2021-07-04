import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/bindings/home_binidng.dart';
import 'package:getx_counter/pages/home_page.dart';
import 'package:getx_counter/pages/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Material App',
        initialRoute: '/home',
        getPages: [
          GetPage(
              name: '/home', page: () => HomePage(), binding: HomeBinding()),
          GetPage(
              name: '/second',
              page: () => SecondPage(),
              binding: HomeBinding()),
        ]);
  }
}
