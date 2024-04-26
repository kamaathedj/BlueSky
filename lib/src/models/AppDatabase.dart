import 'dart:async';
import 'package:blue_sky/src/models/type_converters.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'TaskDao.dart';
import 'TaskModel.dart';

part 'AppDatabase.g.dart';

@Database(version: 1, entities: [Task])
@TypeConverters([DateTimeConverter])
abstract class AppDatabase extends FloorDatabase {
  TaskDao get taskDao;
}