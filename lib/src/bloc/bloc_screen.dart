import 'package:count_state_manage/src/bloc/count_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management - Bloc'),
      ),
      body: Center(
        child: BlocBuilder<CountBloc, int>(builder: (context, state) {
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
            onPressed: () {
              context.read<CountBloc>().add(AddCountEvent());
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            onPressed: () {
              context.read<CountBloc>().add(SubtractCountEvent());
            },
            backgroundColor: Colors.red,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
