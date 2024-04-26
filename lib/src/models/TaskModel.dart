import 'package:floor/floor.dart';

enum Choice{
  official,
  personal
}

@entity
class Task{
  @PrimaryKey(autoGenerate: true)
  final int taskid;
  final String title;
  final String desciption;
  final DateTime startdate;
  final DateTime enddate;
  final DateTime time;
  final Choice workspace;
  
  Task(this.taskid,this.title,this.desciption,this.startdate,this.enddate,this.time,this.workspace);
}