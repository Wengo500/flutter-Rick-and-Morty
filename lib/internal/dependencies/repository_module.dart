import 'package:rick_and_morty/data/repository/character_data_repo.dart';
import 'package:rick_and_morty/domain/repository/character_repo.dart';
import 'package:rick_and_morty/internal/dependencies/api_module.dart';

class RepositoryModule {
  static CharacterRepository? _characterRepo;
  static CharacterRepository characterRepo() {
    return _characterRepo = _characterRepo
        ?? CharacterDataRepository(ApiModule.apiUtil());
  }
}