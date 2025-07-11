// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonsterImpl _$$MonsterImplFromJson(Map<String, dynamic> json) =>
    _$MonsterImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      originalGame: json['originalGame'] as String,
      color: json['color'] as String,
      imageUrl: json['imageUrl'] as String,
      types: json['types'] as String,
    );

Map<String, dynamic> _$$MonsterImplToJson(_$MonsterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'originalGame': instance.originalGame,
      'color': instance.color,
      'imageUrl': instance.imageUrl,
      'types': instance.types,
    };
