import 'package:meta/meta.dart';

import '../model/character.dart';

abstract class CharacterRepository {
  Future<Character> getCharacter({
    @required int page,
    @required String name,
  });
}