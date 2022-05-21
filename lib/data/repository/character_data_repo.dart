import 'package:rick_and_morty/data/api/api_util.dart';
import 'package:rick_and_morty/domain/model/character.dart';
import 'package:rick_and_morty/domain/repository/character_repo.dart';

class CharacterDataRepository extends CharacterRepository {
  final ApiUtil _apiUtil;

  CharacterDataRepository(this._apiUtil);

  @override
  Future<Character> getCharacter({int? page, String? name}) {
    return _apiUtil.getCharacter(page: page, name: name);
  }
}