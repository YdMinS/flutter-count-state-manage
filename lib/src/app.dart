import 'package:count_state_manage/src/bloc/bloc_screen.dart';
import 'package:count_state_manage/src/bloc/count_bloc.dart';
import 'package:count_state_manage/src/cubit/count_cubit.dart';
import 'package:count_state_manage/src/cubit/cubit_screen.dart';
import 'package:count_state_manage/src/getx/count_getx_controller.dart';
import 'package:count_state_manage/src/getx/getx_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            ElevatedButton(
                onPressed: () {
                  Get.to(
                      BlocProvider(
                          create: (context) => CountCubit(),
                          child: CubitScreen()),
                      duration: Duration.zero);
                },
                child: Text('Add with Cubit')),
            ElevatedButton(
                onPressed: () {
                  Get.to(
                    BlocProvider(
                        create: (context) => CountBloc(), child: BlocScreen()),
                    duration: Duration.zero,
                  );
                },
                child: Text('Add with Bloc'))
          ],
        ),
      ),
    );
  }
}
