import 'package:meta/meta.dart';

class Character {
  final Info? info;
  final List <Result>? results;
  Character({
    @required this.info,
    @required this.results,
  });
}

class Info {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;
  Info({
    @required this.count,
    @required this.pages,
     this.next,
     this.prev,
  });
}

class Result {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? gender;
  final String? image;
  Result({
    @required this.id,
    @required this.name,
    @required this.status,
    @required this.species,
    @required this.gender,
    @required this.image,
  });
}