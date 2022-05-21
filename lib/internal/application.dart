import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/domain/bloc/rick_and_morty_bloc/bloc.dart';
import 'package:rick_and_morty/internal/dependencies/repository_module.dart';
import 'package:rick_and_morty/presentations/screens/rick_andMorty_all_persons.dart';

class RickAndMorty extends StatelessWidget{
  RickAndMorty({Key? key}) : super(key: key);
  final characterRepo = RepositoryModule.characterRepo();
  @override
  Widget build(BuildContext context){
    const appName = 'First App';
    return  MultiBlocProvider(
      providers: [
        BlocProvider<CharacterBlock>(
          create: (BuildContext context) => CharacterBlock(characterRepo: characterRepo),
        ),
      ], child: MaterialApp(
        title: appName,
        theme: ThemeData(
          // brightness: Brightness.light,
          primaryColor: const Color.fromRGBO(26, 26, 31, 1.0),
          fontFamily: 'Georgia',
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
          textTheme: const TextTheme(
            headline6: TextStyle(color: Colors.white ,fontSize: 36.0, fontStyle: FontStyle.italic),
            subtitle1: TextStyle(color: Colors.white ,fontSize: 25.0, fontStyle: FontStyle.normal),
            subtitle2: TextStyle(color: Colors.white ,fontSize: 20.0, fontStyle: FontStyle.italic),
          ),
        ),
        home: const AllPersonsPage()
    ),
    );
  }
}