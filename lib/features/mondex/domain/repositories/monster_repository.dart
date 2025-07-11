import 'package:dartz/dartz.dart';
import 'package:mondex/core/errors/failure.dart';
import 'package:mondex/features/mondex/domain/entities/monster.dart';

abstract interface class MonsterRepository {
  Future<Either<Failure, List<Monster>>> getAllMonsters();
  Future<Either<Failure, void>> insertMonster({
    Map<String, dynamic> monster,
  });
  Future<Either<Failure, void>> insertDummyMonsters();
  Future<Either<Failure, void>> insertAddDummyMonster();
}
