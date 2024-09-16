import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techingchildren/Getx/controller.dart';
import 'package:techingchildren/pages/image_alefba.dart';
import 'package:techingchildren/var/map_alefba.dart';

class List_Alefba extends StatelessWidget {
  const List_Alefba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('لیست حروف الفبا')),
      ),
      body: Center(
          child: SingleChildScrollView(
              child: Wrap(
        children: List.generate(
            alefba.length,
            (index) => widget_item_alefba(
                  index: index,
                )),
      ))),
    );
  }
}

class widget_item_alefba extends StatelessWidget {
  const widget_item_alefba({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.find<controller>().save_time('${alefba.keys.elementAt(index)[0]}');
        Get.to(() => Image_Alefba(),
            arguments: <String>['${alefba.values.elementAt(index)[0]}', '']);
      },
      child: Container(
          width: Get.width * 0.25,
          height: Get.width * 0.25,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 3),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5))]),
          child: Center(
              child: Text(
            '${alefba.keys.elementAt(index)}',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
