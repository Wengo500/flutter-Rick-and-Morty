import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/model/character.dart';

class CharacterInfoPage extends StatelessWidget {
  final Result result;
  const CharacterInfoPage({Key? key, required this.result}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${result.name}'),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          CachedNetworkImage(
            imageUrl: result.image as String,
            width: 500,
            fit: BoxFit.fill,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}