import 'package:flutter/material.dart';
import 'package:get/get.dart';

class test1 extends StatelessWidget {
  const test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {},
            child: Text('data'),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text('data2'),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text('data3'),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text('data4'),
          ),
        ],
      ),
    );
  }
}
