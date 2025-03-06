import 'package:count_state_manage/src/getx/count_getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxScreen extends GetView<CountGetxController> {
  const GetxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management - GetX'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.count.value.toString(),
            style: TextStyle(fontSize: 80),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: controller.addCount,
            backgroundColor: Colors.green,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            onPressed: controller.subtractCount,
            backgroundColor: Colors.red,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
