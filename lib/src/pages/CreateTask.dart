import 'package:blue_sky/src/navigation.dart';
import 'package:flutter/material.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('in create task'),
      ),
      floatingActionButton: myFloatingActionButton(),
    );
    
  }
}