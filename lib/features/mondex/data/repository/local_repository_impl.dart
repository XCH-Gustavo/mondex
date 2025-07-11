import 'package:dartz/dartz.dart';
import 'package:mondex/core/errors/failure.dart';
import 'package:mondex/features/mondex/domain/entities/monster.dart';
import 'package:mondex/features/mondex/domain/repositories/monster_repository.dart';
import '../datasources/local_data_sources.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MonsterRepository)
class LocalRepositoryImpl implements MonsterRepository {
  final LocalDataSource _localDataSource;

  LocalRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, List<Monster>>> getAllMonsters() async {
    try {
      final maps = await _localDataSource.getAllMonster();
      final monsters = maps.map((m) => Monster.fromJson(m)).toList();
      return Right(monsters);
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> insertMonster({Map<String, dynamic>? monster}) async {
    try {
      if (monster == null) {
        return Left(DatabaseFailure('Monster map cannot be null'));
      }
      await _localDataSource.insertMonster(monster: monster);
      return const Right(null);
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> insertDummyMonsters() async {
    try {
      await _localDataSource.insertDummyMonsters();
      return const Right(null);
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> insertAddDummyMonster() async {
    try {
      await _localDataSource.insertAddDummyMonster();
      return const Right(null);
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }
}
