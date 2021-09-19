import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/count_controller.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 20),
            Obx(() => Text("Clicks: ${controller.count.toString()}")),
            SizedBox(height: 20),
            CupertinoButton(
                child: Text("Count++"),
                onPressed: () => controller.increment()),
            SizedBox(height: 20),
             CupertinoButton(
                child: Text("Count--"),
                onPressed: () => controller.decrement()),
                   SizedBox(height: 20),
                   
          ],
        ),
      ),
    );
  }
}
