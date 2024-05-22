import 'package:blue_sky/src/Home.dart';
import 'package:blue_sky/src/pages/CreateTask.dart';
import 'package:blue_sky/src/pages/SettingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl_standalone.dart' if (dart.library.html) 'package:intl/intl_browser.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await findSystemLocale();
  runApp( 
    ProviderScope(
      child:  MainApp())
      );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
      '/create': (BuildContext context) => CreateTask(),
      '/setting': (BuildContext context) => SettingPage(),
    },
      home: Home()
    );
  }
}
