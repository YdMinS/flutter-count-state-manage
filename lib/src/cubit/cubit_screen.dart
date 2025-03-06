import 'package:count_state_manage/src/cubit/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management - Cubit'),
      ),
      body: Center(
        child: BlocBuilder<CountCubit, int>(builder: (context, state) {
          return Text(
            state.toString(),
            style: TextStyle(fontSize: 80),
          );
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: context.read<CountCubit>().addCount,
            backgroundColor: Colors.green,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            onPressed: context.read<CountCubit>().subtractCount,
            backgroundColor: Colors.red,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
