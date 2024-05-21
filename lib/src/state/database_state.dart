import 'package:blue_sky/src/models/AppDatabase.dart';
import 'package:blue_sky/src/models/TaskModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final DatabaseChangeNotifier = ChangeNotifierProvider<DatabaseNotifier>(
  (ref) => DatabaseNotifier());

class DatabaseNotifier extends ChangeNotifier {

  Future<List<Task>> getTasks() async {
    final database = await $FloorAppDatabase.databaseBuilder('AppDatabase.db').build();
    notifyListeners();
    return  database.taskDao.getTasks();
    
  }

  Future<void> insertTask(Task task)async{
    final database = await $FloorAppDatabase.databaseBuilder('AppDatabase.db').build();
    notifyListeners();
    return database.taskDao.addTasks(task);
  }

  
}