import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/model/character.dart';
import 'character_status.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key, required this.result}) : super(key: key);
  final Result result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: MediaQuery.of(context).size.height / 7,
          color: const Color.fromRGBO(86, 86, 86, .8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 10),
                width: MediaQuery.of(context).size.width / 3.3,
                child: CachedNetworkImage(
                  imageUrl: result.image as String,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.grey,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.9,
                    child: Text(
                      result.name as String,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  CharacterStatus(
                      liveState: result.status == 'Alive'
                          ? LiveState.alive
                          : result.status == 'Dead'
                          ? LiveState.dead
                          : LiveState.unknown
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Species:',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 2,),
                            Text(
                              result.species as String,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Gender:',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(height: 2,),
                            Text(
                              result.gender as String,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
