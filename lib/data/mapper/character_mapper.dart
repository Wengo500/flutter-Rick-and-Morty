

import 'package:rick_and_morty/data/api/model/api_character.dart';
import 'package:rick_and_morty/domain/model/character.dart';

class CharacterMapper {
  static Character fromApi(ApiCharacter day) {
    final info = Info(
      count: day.info.count.toInt(),
      pages: day.info.pages,
      next: day.info.next,
      prev: day.info.prev,
    );
    List <Result> res = [];
    for (var e in day.results) {
      res.add(Result(
      id: e.id.toInt(),
      name: e.name.toString(),
      status: e.status.toString(),
      species: e.species.toString(),
      gender: e.gender.toString(),
      image: e.image.toString(),
    ));
    }
    return Character(
      info: info,
      results: res,
    );
  }
}