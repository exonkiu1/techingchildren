import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techingchildren/Getx/binding.dart';
import 'package:techingchildren/pages/List_Alefba.dart';
import 'package:techingchildren/pages/mainpage.dart';
import 'package:techingchildren/pages/test/test1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/MainPage',
      initialBinding: mybinding(),
      debugShowCheckedModeBanner: false,
      getPages: [
        //  GetPage(name: '/List_Alefba', page: () => List_Alefba()),
        GetPage(name: '/MainPage', page: () => MainPage()),
        //  GetPage(name: '/test1', page: () => test1())
      ],
    );
  }
}
