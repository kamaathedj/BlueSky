import 'dart:collection';

import 'package:blue_sky/src/Repository/Task_database.dart';
import 'package:blue_sky/src/models/TaskModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final DatabaseChangeNotifier = ChangeNotifierProvider.autoDispose<DatabaseNotifier>(
  (ref) => DatabaseNotifier());

class DatabaseNotifier extends ChangeNotifier {

  DatabaseNotifier(){
    insertTask();
    getTasks();
  }
  TaskDatabase td =  TaskDatabase();
  List<Task> _tasks = [];
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  Future<void> getTasks() async {
    _tasks = await td.getTasks();
    notifyListeners();  
    print(_tasks.length);

  }

  Future<void> insertTask()async{
    
    Task t  = Task(1, "Task schduler app", "does task scheduling", DateTime.now(), DateTime.now(), DateTime.now(),Choice.personal);
    td.insertTask(t);
    _tasks.add(t);
    notifyListeners();
  }


  
}