import 'package:flutter/material.dart';
import 'package:basic_task/screen_2.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Screen 1'),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {

            Get.to(Screen2());


          },
          child:const Text('screen2'),
        )),
      ),
    );
  }
}
