// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techingchildren/pages/List_Alefba.dart';
import 'package:techingchildren/pages/amount_learning_time.dart';
import 'package:techingchildren/pages/list_tutorial_video.dart';
import 'package:techingchildren/pages/spelling/ListSpeling.dart';
import 'package:techingchildren/pages/tutorail%20video.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('آموزش فارسی کلاس اول'),
        ),
      ),
      body: Center(
        child:
            //  Wrap(children: List.generate(4,(index)=>  widget_item_mainpage(index: index,)),),
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () => Get.to(
                List_Alefba(),
              ),
              child: Text('آموزش حروف'),
              color: Color.fromARGB(255, 235, 121, 113),
            ),
            MaterialButton(
              onPressed: () => Get.to(
                ListTutorialVideo(),
              ),
              child: Text('آموزش ویدیویی'),
              color: Color.fromARGB(255, 184, 235, 113),
            ),
            MaterialButton(
              onPressed: () => Get.to(
                AmountLearningTime(),
              ),
              child: Text('زمان یادگیری'),
              color: Color.fromARGB(255, 113, 235, 196),
            ),
            MaterialButton(
              onPressed: () => Get.to(
                Listspeling(),
              ),
              child: Text('املا'),
              color: Color.fromARGB(255, 172, 113, 235),
            ),
          ],
        ),
      ),
    );
  }
}

class widget_item_mainpage extends StatelessWidget {
  const widget_item_mainpage({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return
        //MaterialButton(onPressed: ()=>Get.to(pages.values.elementAt(index)[0]),child: Text(pages.keys.elementAt(index)),);
        InkWell(
      onTap: () => Get.to(pages.values.elementAt(index)[0]),
      child: Container(
        margin: EdgeInsets.all(20),
        width: Get.width * 0.38,
        height: Get.width * 0.38,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 68, 215, 181),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(child: Text('${pages.keys.elementAt(index)}')),
      ),
    );
  }
}

Map<String, List<dynamic>> pages = {
  'آموزش متنی': [List_Alefba()],
  'آموزش تصویری': [],
  'املا': [],
  'میزان زمان یادگیری': [AmountLearningTime()]
};
