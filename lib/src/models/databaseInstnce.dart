import 'package:blue_sky/src/models/AppDatabase.dart';
import 'package:blue_sky/src/models/TaskModel.dart';


void getDatabase()async{
  final database = await $FloorAppDatabase.databaseBuilder('AppDatabase.db').build();
    
    Task t  = Task(1, "Task schduler app", "does task scheduling", DateTime.now(), DateTime.now(), DateTime.now(),Choice.personal);
    database.taskDao.addTasks(t);
    
   database.taskDao.getTasks().then((value) => print(value.single.title ));
  
}
