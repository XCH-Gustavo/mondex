import 'package:mondex/core/errors/failure.dart';
import 'package:mondex/features/mondex/domain/repositories/local_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class InsertMonsterUseCase {
  final LocalRepository _repository;

  InsertMonsterUseCase(this._repository);

  Future<Either<Failure, void>> call() async {
    return await _repository.insertMonster();
  }
}
