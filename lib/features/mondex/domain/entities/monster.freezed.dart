// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Monster _$MonsterFromJson(Map<String, dynamic> json) {
  return _Monster.fromJson(json);
}

/// @nodoc
mixin _$Monster {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get originalGame =>
      throw _privateConstructorUsedError; // required int originalSeriesId,
  String get color => throw _privateConstructorUsedError;
  String get imageUrl =>
      throw _privateConstructorUsedError; // required List<String> types,
  String get types => throw _privateConstructorUsedError;

  /// Serializes this Monster to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Monster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonsterCopyWith<Monster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonsterCopyWith<$Res> {
  factory $MonsterCopyWith(Monster value, $Res Function(Monster) then) =
      _$MonsterCopyWithImpl<$Res, Monster>;
  @useResult
  $Res call({
    int id,
    String name,
    String description,
    String originalGame,
    String color,
    String imageUrl,
    String types,
  });
}

/// @nodoc
class _$MonsterCopyWithImpl<$Res, $Val extends Monster>
    implements $MonsterCopyWith<$Res> {
  _$MonsterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Monster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? originalGame = null,
    Object? color = null,
    Object? imageUrl = null,
    Object? types = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            originalGame: null == originalGame
                ? _value.originalGame
                : originalGame // ignore: cast_nullable_to_non_nullable
                      as String,
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            types: null == types
                ? _value.types
                : types // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MonsterImplCopyWith<$Res> implements $MonsterCopyWith<$Res> {
  factory _$$MonsterImplCopyWith(
    _$MonsterImpl value,
    $Res Function(_$MonsterImpl) then,
  ) = __$$MonsterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String description,
    String originalGame,
    String color,
    String imageUrl,
    String types,
  });
}

/// @nodoc
class __$$MonsterImplCopyWithImpl<$Res>
    extends _$MonsterCopyWithImpl<$Res, _$MonsterImpl>
    implements _$$MonsterImplCopyWith<$Res> {
  __$$MonsterImplCopyWithImpl(
    _$MonsterImpl _value,
    $Res Function(_$MonsterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Monster
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? originalGame = null,
    Object? color = null,
    Object? imageUrl = null,
    Object? types = null,
  }) {
    return _then(
      _$MonsterImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        originalGame: null == originalGame
            ? _value.originalGame
            : originalGame // ignore: cast_nullable_to_non_nullable
                  as String,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        types: null == types
            ? _value.types
            : types // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MonsterImpl implements _Monster {
  const _$MonsterImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.originalGame,
    required this.color,
    required this.imageUrl,
    required this.types,
  });

  factory _$MonsterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonsterImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String originalGame;
  // required int originalSeriesId,
  @override
  final String color;
  @override
  final String imageUrl;
  // required List<String> types,
  @override
  final String types;

  @override
  String toString() {
    return 'Monster(id: $id, name: $name, description: $description, originalGame: $originalGame, color: $color, imageUrl: $imageUrl, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonsterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.originalGame, originalGame) ||
                other.originalGame == originalGame) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.types, types) || other.types == types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    originalGame,
    color,
    imageUrl,
    types,
  );

  /// Create a copy of Monster
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonsterImplCopyWith<_$MonsterImpl> get copyWith =>
      __$$MonsterImplCopyWithImpl<_$MonsterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonsterImplToJson(this);
  }
}

abstract class _Monster implements Monster {
  const factory _Monster({
    required final int id,
    required final String name,
    required final String description,
    required final String originalGame,
    required final String color,
    required final String imageUrl,
    required final String types,
  }) = _$MonsterImpl;

  factory _Monster.fromJson(Map<String, dynamic> json) = _$MonsterImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get originalGame; // required int originalSeriesId,
  @override
  String get color;
  @override
  String get imageUrl; // required List<String> types,
  @override
  String get types;

  /// Create a copy of Monster
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonsterImplCopyWith<_$MonsterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
