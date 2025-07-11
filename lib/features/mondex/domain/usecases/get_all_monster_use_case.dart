import 'package:mondex/core/errors/failure.dart';
import 'package:mondex/features/mondex/domain/entities/monster.dart';
import 'package:mondex/features/mondex/domain/repositories/monster_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllMonsterUseCase {
  final MonsterRepository _repository;

  GetAllMonsterUseCase(this._repository);

  Future<Either<Failure, List<Monster>>> call() async {
    return await _repository.getAllMonsters();
  }
}