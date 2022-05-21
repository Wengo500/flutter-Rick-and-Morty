import 'package:meta/meta.dart';
import 'package:rick_and_morty/data/api/request/get_character_body.dart';
import 'package:rick_and_morty/data/api/services/character_service.dart';
import 'package:rick_and_morty/data/mapper/character_mapper.dart';
import 'package:rick_and_morty/domain/model/character.dart';

class ApiUtil {
  final CharacterService _characterService;
  ApiUtil(this._characterService);

  Future<Character> getCharacter({
    @required int? page,
    @required String? name,
  }) async {
    final body = GetCharacterBody(page: page, name: name);
    final result = await _characterService.getCharacter(body);
    return CharacterMapper.fromApi(result);
  }
}