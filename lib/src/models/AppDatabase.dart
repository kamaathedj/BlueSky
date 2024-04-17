import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'PlayerDao.dart';
import './PlayModel.dart';

part 'AppDatabase.g.dart';

@Database(version: 1, entities: [Player])
abstract class AppDatabase extends FloorDatabase {
  PlayerDao get playerDao;
}