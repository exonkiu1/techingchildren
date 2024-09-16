import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techingchildren/Getx/controller.dart';

class Image_Alefba extends StatefulWidget {
  const Image_Alefba({super.key});

  @override
  State<Image_Alefba> createState() => _Image_AlefbaState();
}

class _Image_AlefbaState extends State<Image_Alefba> {
  String pathimage = 'file/alefba/ا1.jpg';
  @override
  void initState() {
    pathimage = Get.arguments[0]??'file/alefba/ا1.jpg';
    Get.find<controller>().stop.value = false;
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    Get.find<controller>().stop.value = true;
    
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Center(child: Image.asset('file/alefba/$pathimage.jpg')),);
  }

}

