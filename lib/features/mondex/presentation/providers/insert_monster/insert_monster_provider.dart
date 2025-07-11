import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondex/di/di.dart';
import 'package:mondex/features/mondex/domain/usecases/insert_monster_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'insert_monster_provider.g.dart';

@riverpod
Future<void> insertMonster(Ref ref) async {
  final useCase = getIt<InsertMonsterUseCase>();
  final result = await useCase();
  return result.fold(
    (failure) => throw failure,
    (monsters) => monsters,
  );
}