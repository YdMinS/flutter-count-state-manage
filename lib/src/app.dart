import 'package:count_state_manage/src/getx/count_getx_controller.dart';
import 'package:count_state_manage/src/getx/getx_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count State Manage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(
                    GetxScreen(),
                    binding: BindingsBuilder(() {
                      Get.put(CountGetxController());
                    }),
                    duration: Duration.zero,
                  );
                },
                child: Text('Add with Getx')),
            ElevatedButton(onPressed: () {}, child: Text('Add with Cubit')),
            ElevatedButton(onPressed: () {}, child: Text('Add with Bloc'))
          ],
        ),
      ),
    );
  }
}
