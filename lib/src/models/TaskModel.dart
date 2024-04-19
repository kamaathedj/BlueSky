import 'package:floor/floor.dart';

@entity
class Task{
  @primaryKey
  final int task_id;
  final String title;
  final String desciption;
  
  Task(this.task_id,this.title,this.desciption);
}