import 'package:mondex/core/errors/failure.dart';
import 'package:mondex/features/mondex/domain/repositories/monster_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class InsertDummyMonsterUseCase {
  final MonsterRepository _repository;

  InsertDummyMonsterUseCase(this._repository);

  Future<Either<Failure, void>> call() async {
    return await _repository.insertDummyMonsters();
  }
}
