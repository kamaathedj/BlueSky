import 'package:blue_sky/src/models/AppDatabase.dart';


void getDatabase()async{
  final database = await $FloorAppDatabase.databaseBuilder('AppDatabase.db').build();
  var tasks = database.taskDao.getTasks();

}
