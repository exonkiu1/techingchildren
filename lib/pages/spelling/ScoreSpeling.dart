import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../var/map_spelling.dart';
import '../mainpage.dart';
import 'Controllerspelng.dart';

class Scorespeling extends StatefulWidget {
  const Scorespeling({super.key});

  @override
  State<Scorespeling> createState() => _ScorespelingState();
}

class _ScorespelingState extends State<Scorespeling> {
  String title = '';
  @override
  void initState() {
    List<String> listargumnet = Get.arguments;
    title = listargumnet[0];
    print('${title}');
    setState(() {});
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('نمره شما'),
          Obx(() {
            return Text(
              '${((Get.find<Controllerspelng>().score.value / spelling['${title}']!.length) * 20).toStringAsFixed(2)}',
              style: TextStyle(fontSize: 60),
            );
          }),
          InkWell(
            onTap: () => Get.off(MainPage()),
            child: Container(
              width: 200,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text('بازگشت به خانه'),
              ),
            ),
          )
        ],
      )),
    );
  }
}
