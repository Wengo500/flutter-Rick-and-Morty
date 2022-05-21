import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rick_and_morty/domain/bloc/rick_and_morty_bloc/bloc.dart';
import 'package:rick_and_morty/domain/model/character.dart';
import 'package:rick_and_morty/internal/dependencies/character_module.dart';
import 'package:rick_and_morty/presentations/screens/character_info_page.dart';
import 'package:rick_and_morty/presentations/widgets/rick_and_morty_custom_list_tile.dart';

class AllPersonsPage extends StatefulWidget {
  const AllPersonsPage({Key? key}) : super(key: key);
  @override
  _AllPersonsPageState createState() => _AllPersonsPageState();
}

class _AllPersonsPageState extends State<AllPersonsPage> {
  Character? _currentCharacter;
  List<Result> _currentResults = [];
  int _currentPage = 1;
  String _currentSearchStr = '';

  final RefreshController refreshController = RefreshController();
  bool _isPagination = false;
  CharacterBlock? _characterState;
  @override
  void initState() {
    super.initState();
    _characterState = CharacterModule.homeState();
    if(_currentResults.isEmpty) {
      context.read<CharacterBlock>()
          .add(const CharacterEvent.fetch(page: 1, name: ''));
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CharacterBlock>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persons'),
      ),
      body: Container(
          color: Colors.black87,
          child: SizedBox.expand(
            child: Column(
              children: [
                TextField(
                  style: const TextStyle(color: Colors.white,),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(86, 86, 86, .8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                    hintText: 'Search name',
                    hintStyle: const TextStyle(color: Colors.white)
                  ),
                  onChanged: (value) {
                    _currentPage = 1;
                    _currentResults = [];
                    _currentSearchStr = value;
                    context.read<CharacterBlock>()
                        .add(CharacterEventFetch(name: value, page: _currentPage));
                  },
                ),
                state.when(
                  loading: () {
                    if (!_isPagination) {
                      return const Center(
                          child:
                          CircularProgressIndicator(strokeWidth: 3));
                    } else {
                      return Expanded(child: _customListView(_currentResults));

                    }
                  },
                  loaded: (characterLoaded) {
                    _currentCharacter = characterLoaded;
                    if (_isPagination) {
                      _currentResults.addAll(_currentCharacter?.results as List<Result>);
                      refreshController.loadComplete();
                      _isPagination = false;
                    } else {
                      _currentResults.addAll(_currentCharacter?.results as List<Result>);
                    }
                    return Expanded(child: _customListView(_currentResults));
                  },
                  error: () => const Text('some error')
                ),
              ],
            ),
          )
      )
    );
  }
    Widget _customListView(List<Result> currentResult) {
        return SmartRefresher(
            controller: refreshController,
            enablePullUp: true,
            enablePullDown: false,
            onLoading: () {
              _isPagination = true;
              _currentPage++;
              final pagesNum =  _currentCharacter?.info?.pages as int;
              if (_currentPage <= pagesNum) {
                context.read<CharacterBlock>()
                    .add(CharacterEvent.fetch(name: _currentSearchStr, page: _currentPage));
              } else {
                 refreshController.loadNoData();
              }
            },
              child: ListView.builder(
                itemCount: _currentResults.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int i) {
                  return  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            CharacterInfoPage(result: _currentResults[i])),
                      );
                    },
                      child: CustomListTile(result: _currentResults[i]),
                  );
                }
              )
        );
    }
}