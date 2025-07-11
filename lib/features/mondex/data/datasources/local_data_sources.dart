import 'package:sqflite/sqflite.dart';

abstract interface class LocalDataSource {
  Future<Database> database();

  Future<void> insertMonster({
    Map<String, dynamic> monster,
  });

  Future<List<Map<String, dynamic>>> getAllMonster();

  Future<void> insertDummyMonsters();

  Future<void> insertAddDummyMonster();
}
