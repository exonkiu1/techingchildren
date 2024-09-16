import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techingchildren/Getx/controller.dart';

import '../var/map_alefba.dart';

class AmountLearningTime extends StatefulWidget {
  const AmountLearningTime({super.key});

  @override
  State<AmountLearningTime> createState() => _AmountLearningTimeState();
}

class _AmountLearningTimeState extends State<AmountLearningTime> {
  @override
  void initState() {
    Get.find<controller>().getmounts();

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Center(child: Text('میزان زمان یادگیری برای حروف الفبا'),),),
      body: Center(child: SingleChildScrollView(child: Wrap(
      //  mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(alefba.length,(index)=> widget_item_alefba(index: index,mount: Get.find<controller>().mounts[index].value,)),))),

    );
  }


}


class widget_item_alefba extends StatelessWidget {
  const widget_item_alefba({
    super.key,required this.index, this.mount = 0
  });
  final int index;
  final int mount;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width*0.25,
      height:  Get.width*0.25,
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 3),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5))]),
      child: Center(child: Column(
        children: [
          Text('${alefba.keys.elementAt(index)}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Obx(
            () {
              return Text('${Get.find<controller>().mounts[index].value}ثانیه',textDirection: TextDirection.rtl,);
            }
          )
        ],
      )));
  }
}