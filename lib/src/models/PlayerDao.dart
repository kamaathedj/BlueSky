import 'package:blue_sky/src/models/PlayModel.dart';
import 'package:floor/floor.dart';

@dao
abstract class PlayerDao{
  @Query('SELECT * FROM Player')
  Future<List<Player>> getPlayers();
}