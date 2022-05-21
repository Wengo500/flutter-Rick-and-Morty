import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_character.freezed.dart';
part 'api_character.g.dart';

@freezed
class ApiCharacter with _$ApiCharacter {
  const factory ApiCharacter({
    required ApiInfo info,
    required List<ApiResults> results,
  }) = _ApiCharacter;
  factory ApiCharacter.fromJson(Map<String, dynamic> json) => _$ApiCharacterFromJson(json);
}

@freezed
class ApiInfo with _$ApiInfo {
  const factory ApiInfo({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _ApiInfo;
  factory ApiInfo.fromJson(Map<String, dynamic> json) => _$ApiInfoFromJson(json);
}

@freezed
class ApiResults with _$ApiResults {
  const factory ApiResults({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
  }) = _ApiResults;
  factory ApiResults.fromJson(Map<String, dynamic> json) => _$ApiResultsFromJson(json);
}