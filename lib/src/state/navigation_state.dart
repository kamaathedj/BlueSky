import 'package:blue_sky/src/models/databaseInstnce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final NavigationChangeNotifier = ChangeNotifierProvider<NavigationNotifier>(
  (ref) => NavigationNotifier()
);
class NavigationNotifier extends ChangeNotifier{
   String _pageValue ='Home';

  String get page_value => _pageValue;

  void changePage(String value){
    _pageValue = value;
    getDatabase();
    notifyListeners();
  }
}