
import 'package:rick_and_morty/domain/bloc/rick_and_morty_bloc/bloc.dart';
import 'package:rick_and_morty/internal/dependencies/repository_module.dart';

class CharacterModule {
  static CharacterBlock homeState() {
    return CharacterBlock(
        characterRepo: RepositoryModule.characterRepo(),
    );
  }
}