import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techingchildren/pages/tutorail%20video.dart';

class ListTutorialVideo extends StatelessWidget {
  const ListTutorialVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: List.generate(
                4,
                (index) => InkWell(
                      onTap: () => Get.to(Tutorail_video(), arguments: <int>[
                        index,
                      ]),
                      child: Container(
                        width: Get.width * 0.8,
                        height: Get.height * 0.1,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        color: Colors.grey,
                        child: Center(child: Text('آموزش ${index + 1}')),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
