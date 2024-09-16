import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techingchildren/pages/spelling/Controllerspelng.dart';
import 'package:techingchildren/var/map_spelling.dart';

import 'ScoreSpeling.dart';

class Speling extends StatefulWidget {
  const Speling({super.key});

  @override
  State<Speling> createState() => _SpelingState();
}

class _SpelingState extends State<Speling> {
  String title = '';
  @override
  void initState() {
    List<String> listargumnet = Get.arguments;
    title = listargumnet[0];
    Get.find<Controllerspelng>().index.value = 0;
    Get.find<Controllerspelng>().score.value = 0;
    setState(() {});
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Image.asset(
                'file/spelling/${spelling[title]!.keys.elementAt(Get.find<Controllerspelng>().index.value)}') */

            Obx(() {
              return Image.asset(
                  'file/spelling/${spelling['${title}']!.keys.elementAt(Get.find<Controllerspelng>().index.value).split('.')[0]}.jfif');
            }),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BoxOption(
                  title: title,
                  index: 0,
                ),
                BoxOption(
                  title: title,
                  index: 1,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BoxOption(
                  title: title,
                  index: 2,
                ),
                BoxOption(
                  title: title,
                  index: 3,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 270,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Column(
                children: [
                  Obx(() {
                    return Text(
                        '${spelling['${title}']!.length}/${Get.find<Controllerspelng>().index.value + 1}');
                  }),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}

class BoxOption extends StatelessWidget {
  const BoxOption({super.key, required this.title, this.index = 0});

  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if ((index + 1) ==
            int.tryParse(
                '${spelling['${title}']!.values.elementAt(Get.find<Controllerspelng>().index.value)[4]}')) {
          Get.find<Controllerspelng>().score.value += 1;
        }
        print(
            'yes :${index + 1} /// ${int.tryParse('${spelling['${title}']!.values.elementAt(Get.find<Controllerspelng>().index.value)[4]}')}');

        if (Get.find<Controllerspelng>().index.value + 1 <
            spelling['${title}']!.length) {
          Get.find<Controllerspelng>().index.value += 1;
        } else {
          Get.off(
            Scorespeling(),
            arguments: ['${title}', ''],
          );
        }
      },
      child: Obx(() {
        return Container(
          width: 100,
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                Obx(() {
                  return Text(
                      '${spelling['${title}']!.values.elementAt(Get.find<Controllerspelng>().index.value)[index]}');
                }),
              ],
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
            color: (index + 1) ==
                      int.tryParse(
                          '${spelling['${title}']!.values.elementAt(Get.find<Controllerspelng>().index.value)[4]}')
                  ? null
                  : null
          ),
        );
      }),
    );
  }
}
