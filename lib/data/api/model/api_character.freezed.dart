// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiCharacter _$ApiCharacterFromJson(Map<String, dynamic> json) {
  return _ApiCharacter.fromJson(json);
}

/// @nodoc
class _$ApiCharacterTearOff {
  const _$ApiCharacterTearOff();

  _ApiCharacter call(
      {required ApiInfo info, required List<ApiResults> results}) {
    return _ApiCharacter(
      info: info,
      results: results,
    );
  }

  ApiCharacter fromJson(Map<String, Object?> json) {
    return ApiCharacter.fromJson(json);
  }
}

/// @nodoc
const $ApiCharacter = _$ApiCharacterTearOff();

/// @nodoc
mixin _$ApiCharacter {
  ApiInfo get info => throw _privateConstructorUsedError;
  List<ApiResults> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiCharacterCopyWith<ApiCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCharacterCopyWith<$Res> {
  factory $ApiCharacterCopyWith(
          ApiCharacter value, $Res Function(ApiCharacter) then) =
      _$ApiCharacterCopyWithImpl<$Res>;
  $Res call({ApiInfo info, List<ApiResults> results});

  $ApiInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$ApiCharacterCopyWithImpl<$Res> implements $ApiCharacterCopyWith<$Res> {
  _$ApiCharacterCopyWithImpl(this._value, this._then);

  final ApiCharacter _value;
  // ignore: unused_field
  final $Res Function(ApiCharacter) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ApiInfo,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ApiResults>,
    ));
  }

  @override
  $ApiInfoCopyWith<$Res> get info {
    return $ApiInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$ApiCharacterCopyWith<$Res>
    implements $ApiCharacterCopyWith<$Res> {
  factory _$ApiCharacterCopyWith(
          _ApiCharacter value, $Res Function(_ApiCharacter) then) =
      __$ApiCharacterCopyWithImpl<$Res>;
  @override
  $Res call({ApiInfo info, List<ApiResults> results});

  @override
  $ApiInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$ApiCharacterCopyWithImpl<$Res> extends _$ApiCharacterCopyWithImpl<$Res>
    implements _$ApiCharacterCopyWith<$Res> {
  __$ApiCharacterCopyWithImpl(
      _ApiCharacter _value, $Res Function(_ApiCharacter) _then)
      : super(_value, (v) => _then(v as _ApiCharacter));

  @override
  _ApiCharacter get _value => super._value as _ApiCharacter;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_ApiCharacter(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ApiInfo,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ApiResults>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiCharacter implements _ApiCharacter {
  const _$_ApiCharacter({required this.info, required this.results});

  factory _$_ApiCharacter.fromJson(Map<String, dynamic> json) =>
      _$$_ApiCharacterFromJson(json);

  @override
  final ApiInfo info;
  @override
  final List<ApiResults> results;

  @override
  String toString() {
    return 'ApiCharacter(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiCharacter &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$ApiCharacterCopyWith<_ApiCharacter> get copyWith =>
      __$ApiCharacterCopyWithImpl<_ApiCharacter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiCharacterToJson(this);
  }
}

abstract class _ApiCharacter implements ApiCharacter {
  const factory _ApiCharacter(
      {required ApiInfo info,
      required List<ApiResults> results}) = _$_ApiCharacter;

  factory _ApiCharacter.fromJson(Map<String, dynamic> json) =
      _$_ApiCharacter.fromJson;

  @override
  ApiInfo get info;
  @override
  List<ApiResults> get results;
  @override
  @JsonKey(ignore: true)
  _$ApiCharacterCopyWith<_ApiCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiInfo _$ApiInfoFromJson(Map<String, dynamic> json) {
  return _ApiInfo.fromJson(json);
}

/// @nodoc
class _$ApiInfoTearOff {
  const _$ApiInfoTearOff();

  _ApiInfo call(
      {required int count, required int pages, String? next, String? prev}) {
    return _ApiInfo(
      count: count,
      pages: pages,
      next: next,
      prev: prev,
    );
  }

  ApiInfo fromJson(Map<String, Object?> json) {
    return ApiInfo.fromJson(json);
  }
}

/// @nodoc
const $ApiInfo = _$ApiInfoTearOff();

/// @nodoc
mixin _$ApiInfo {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiInfoCopyWith<ApiInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiInfoCopyWith<$Res> {
  factory $ApiInfoCopyWith(ApiInfo value, $Res Function(ApiInfo) then) =
      _$ApiInfoCopyWithImpl<$Res>;
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class _$ApiInfoCopyWithImpl<$Res> implements $ApiInfoCopyWith<$Res> {
  _$ApiInfoCopyWithImpl(this._value, this._then);

  final ApiInfo _value;
  // ignore: unused_field
  final $Res Function(ApiInfo) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: prev == freezed
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ApiInfoCopyWith<$Res> implements $ApiInfoCopyWith<$Res> {
  factory _$ApiInfoCopyWith(_ApiInfo value, $Res Function(_ApiInfo) then) =
      __$ApiInfoCopyWithImpl<$Res>;
  @override
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class __$ApiInfoCopyWithImpl<$Res> extends _$ApiInfoCopyWithImpl<$Res>
    implements _$ApiInfoCopyWith<$Res> {
  __$ApiInfoCopyWithImpl(_ApiInfo _value, $Res Function(_ApiInfo) _then)
      : super(_value, (v) => _then(v as _ApiInfo));

  @override
  _ApiInfo get _value => super._value as _ApiInfo;

  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_ApiInfo(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: prev == freezed
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiInfo implements _ApiInfo {
  const _$_ApiInfo(
      {required this.count, required this.pages, this.next, this.prev});

  factory _$_ApiInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ApiInfoFromJson(json);

  @override
  final int count;
  @override
  final int pages;
  @override
  final String? next;
  @override
  final String? prev;

  @override
  String toString() {
    return 'ApiInfo(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiInfo &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.pages, pages) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.prev, prev));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(pages),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(prev));

  @JsonKey(ignore: true)
  @override
  _$ApiInfoCopyWith<_ApiInfo> get copyWith =>
      __$ApiInfoCopyWithImpl<_ApiInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiInfoToJson(this);
  }
}

abstract class _ApiInfo implements ApiInfo {
  const factory _ApiInfo(
      {required int count,
      required int pages,
      String? next,
      String? prev}) = _$_ApiInfo;

  factory _ApiInfo.fromJson(Map<String, dynamic> json) = _$_ApiInfo.fromJson;

  @override
  int get count;
  @override
  int get pages;
  @override
  String? get next;
  @override
  String? get prev;
  @override
  @JsonKey(ignore: true)
  _$ApiInfoCopyWith<_ApiInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiResults _$ApiResultsFromJson(Map<String, dynamic> json) {
  return _ApiResults.fromJson(json);
}

/// @nodoc
class _$ApiResultsTearOff {
  const _$ApiResultsTearOff();

  _ApiResults call(
      {required int id,
      required String name,
      required String status,
      required String species,
      required String gender,
      required String image}) {
    return _ApiResults(
      id: id,
      name: name,
      status: status,
      species: species,
      gender: gender,
      image: image,
    );
  }

  ApiResults fromJson(Map<String, Object?> json) {
    return ApiResults.fromJson(json);
  }
}

/// @nodoc
const $ApiResults = _$ApiResultsTearOff();

/// @nodoc
mixin _$ApiResults {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResultsCopyWith<ApiResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultsCopyWith<$Res> {
  factory $ApiResultsCopyWith(
          ApiResults value, $Res Function(ApiResults) then) =
      _$ApiResultsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image});
}

/// @nodoc
class _$ApiResultsCopyWithImpl<$Res> implements $ApiResultsCopyWith<$Res> {
  _$ApiResultsCopyWithImpl(this._value, this._then);

  final ApiResults _value;
  // ignore: unused_field
  final $Res Function(ApiResults) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiResultsCopyWith<$Res> implements $ApiResultsCopyWith<$Res> {
  factory _$ApiResultsCopyWith(
          _ApiResults value, $Res Function(_ApiResults) then) =
      __$ApiResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image});
}

/// @nodoc
class __$ApiResultsCopyWithImpl<$Res> extends _$ApiResultsCopyWithImpl<$Res>
    implements _$ApiResultsCopyWith<$Res> {
  __$ApiResultsCopyWithImpl(
      _ApiResults _value, $Res Function(_ApiResults) _then)
      : super(_value, (v) => _then(v as _ApiResults));

  @override
  _ApiResults get _value => super._value as _ApiResults;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? gender = freezed,
    Object? image = freezed,
  }) {
    return _then(_ApiResults(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResults implements _ApiResults {
  const _$_ApiResults(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.gender,
      required this.image});

  factory _$_ApiResults.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResultsFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String gender;
  @override
  final String image;

  @override
  String toString() {
    return 'ApiResults(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResults &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.species, species) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(species),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$ApiResultsCopyWith<_ApiResults> get copyWith =>
      __$ApiResultsCopyWithImpl<_ApiResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResultsToJson(this);
  }
}

abstract class _ApiResults implements ApiResults {
  const factory _ApiResults(
      {required int id,
      required String name,
      required String status,
      required String species,
      required String gender,
      required String image}) = _$_ApiResults;

  factory _ApiResults.fromJson(Map<String, dynamic> json) =
      _$_ApiResults.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get gender;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$ApiResultsCopyWith<_ApiResults> get copyWith =>
      throw _privateConstructorUsedError;
}
