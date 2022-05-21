// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiCharacter _$$_ApiCharacterFromJson(Map<String, dynamic> json) =>
    _$_ApiCharacter(
      info: ApiInfo.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => ApiResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiCharacterToJson(_$_ApiCharacter instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };

_$_ApiInfo _$$_ApiInfoFromJson(Map<String, dynamic> json) => _$_ApiInfo(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$$_ApiInfoToJson(_$_ApiInfo instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

_$_ApiResults _$$_ApiResultsFromJson(Map<String, dynamic> json) =>
    _$_ApiResults(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_ApiResultsToJson(_$_ApiResults instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
    };
