import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/count_controller.dart';
import 'package:get/get.dart';

class Newscreen extends StatefulWidget {
  const Newscreen({ Key? key }) : super(key: key);

  @override
  _NewscreenState createState() => _NewscreenState();
}

class _NewscreenState extends State<Newscreen> {

  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Clicks: ${controller.count.toString()}")),
                Obx(() => Text("Devision: ${controller.division.toString()}")),
          ],
        ),
      ),
      
    );
  }
}