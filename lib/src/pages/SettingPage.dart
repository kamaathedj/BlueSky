import 'package:blue_sky/src/navigation.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('in settings page'),
      ),
      floatingActionButton: myFloatingActionButton(),
    );
  }
}