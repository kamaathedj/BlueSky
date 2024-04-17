import 'package:floor/floor.dart';

@entity
class Player{
  @primaryKey
  final int id;
  final String name;
  
  Player(this.id,this.name);
}