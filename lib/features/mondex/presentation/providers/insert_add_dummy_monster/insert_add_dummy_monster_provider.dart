import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondex/di/di.dart';
import 'package:mondex/features/mondex/domain/usecases/insert_add_dummy_monsters_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'insert_add_dummy_monster_provider.g.dart';

@riverpod
Future<void> insertAddDummyMonster(Ref ref) async {
  final useCase = getIt<InsertAddDummyMonsterUseCase>();
  final result = await useCase();
  return result.fold(
    (failure) => throw failure,
    (monsters) => monsters,
  );
}