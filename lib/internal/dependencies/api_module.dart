import 'package:rick_and_morty/data/api/api_util.dart';
import 'package:rick_and_morty/data/api/services/character_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;
  static ApiUtil apiUtil() {
    return _apiUtil ?? ApiUtil(CharacterService());
  }
}