import 'package:blue_sky/src/models/AppDatabase.dart';
import 'package:blue_sky/src/models/TaskModel.dart';

class TaskDatabase {

  Future<List<Task>> getTasks() async {
    final database = await $FloorAppDatabase.databaseBuilder('AppDatabase.db').build();
    return  database.taskDao.getTasks();
    
  }

  Future<void> insertTask(Task task)async{
    final database = await $FloorAppDatabase.databaseBuilder('AppDatabase.db').build();
    return database.taskDao.addTasks(task);
  }

  
}