import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondex/di/di.dart';
import 'package:mondex/features/mondex/domain/entities/monster.dart';
import 'package:mondex/features/mondex/domain/usecases/get_all_monster_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_all_monster_provider.g.dart';

@riverpod
Future<List<Monster>> getAllMonster(Ref ref) async {
  final useCase = getIt<GetAllMonsterUseCase>();
  final result = await useCase();
  return result.fold(
    (failure) => throw failure,
    (monsters) => monsters,
  );
}