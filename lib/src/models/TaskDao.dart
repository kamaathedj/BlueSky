import 'package:blue_sky/src/models/TaskModel.dart';
import 'package:floor/floor.dart';

@dao
abstract class TaskDao{
  @Query('SELECT * FROM Task')
  Future<List<Task>> getTasks();

  @insert
  Future<void> addTasks(Task task);

  @delete
  Future<void> deleteTask(Task task);
}