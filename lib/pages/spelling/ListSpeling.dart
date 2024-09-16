import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techingchildren/pages/spelling/Controllerspelng.dart';
import 'package:techingchildren/pages/spelling/speling.dart';
import 'package:techingchildren/var/map_spelling.dart';

class Listspeling extends StatefulWidget {
  const Listspeling({super.key});

  @override
  State<Listspeling> createState() => _ListspelingState();
}

class _ListspelingState extends State<Listspeling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'لیست  دسته بندی املا',
          ),
        ),
      ),
      body: Center(
        child: Wrap(
          children: List.generate(
              spelling.length,
              (i) => InkWell(
                    onTap: () {
                      Get.to(() => Speling(),
                          arguments: [spelling.keys.elementAt(i), '']);
                      Get.find<Controllerspelng>().index.value = 0;
                      Get.find<Controllerspelng>().score.value = 0;
                    },
                    child: Container(
                      width: 100,
                      height: 60,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(171, 106, 255, 7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(spelling.keys.elementAt(i)),
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
