import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/domain/model/character.dart';
import 'package:rick_and_morty/domain/repository/character_repo.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class CharacterBlock extends Bloc<CharacterEvent, CharacterState> {
  final CharacterRepository characterRepo;
  CharacterBlock({required this.characterRepo}) : super(const CharacterState.loading()){
    on<CharacterEventFetch>((event, emit) async {
      emit(const CharacterState.loading());
      try {
        Character _characterLoaded = await characterRepo.getCharacter(page: event.page, name: event.name);
        emit(CharacterState.loaded(characterLoaded: _characterLoaded));
      } catch (_) {
        emit(const CharacterState.error());
      }
    });
  }
}