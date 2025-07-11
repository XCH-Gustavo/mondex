import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondex/di/di.dart';
import 'package:mondex/features/mondex/domain/usecases/insert_dummy_monsters_use_case%20copy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'insert_dummy_monster_provider.g.dart';

@riverpod
Future<void> insertDummyMonster(Ref ref) async {
  final useCase = getIt<InsertDummyMonsterUseCase>();
  final result = await useCase();
  return result.fold(
    (failure) => throw failure,
    (monsters) => monsters,
  );
}