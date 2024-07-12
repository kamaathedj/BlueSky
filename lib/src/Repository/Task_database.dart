import 'package:blue_sky/src/models/AppDatabase.dart';
import 'package:blue_sky/src/models/TaskModel.dart';

class TaskDatabase {
  var instance = $FloorAppDatabase.databaseBuilder('AppDatabase.db').build();
  Future<List<Task>> getTasks() async {
    final database = await instance.whenComplete(() => print("done getting tasks"));
    return  database.taskDao.getTasks();
    
  }

  Future<void> insertTask(Task task)async{
    final database = await instance;
    return database.taskDao.addTasks(task);
  }

  
}