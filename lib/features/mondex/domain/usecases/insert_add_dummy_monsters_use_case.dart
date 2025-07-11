import 'package:mondex/core/errors/failure.dart';
import 'package:mondex/features/mondex/domain/repositories/monster_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class InsertAddDummyMonsterUseCase {
  final MonsterRepository _repository;

  InsertAddDummyMonsterUseCase(this._repository);

  Future<Either<Failure, void>> call() async {
    return await _repository.insertAddDummyMonster();
  }
}
