import 'package:freezed_annotation/freezed_annotation.dart';

part 'monster.freezed.dart';
part 'monster.g.dart';

@freezed
class Monster with _$Monster {
  const factory Monster({
    required int id,
    required String name,
    required String description,
    required String originalGame,
    required String color,
    required String imageUrl,
    required String types,
  }) = _Monster;

  factory Monster.fromJson(Map<String, dynamic> json) => _$MonsterFromJson(json);
}