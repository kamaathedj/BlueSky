import 'package:blue_sky/src/navigation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
const Home({ super.key });

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      body: Center(
        child: Text("in Home page")
      ),
      floatingActionButton: myFloatingActionButton(),
    );
  }
}