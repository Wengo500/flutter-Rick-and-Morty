import 'package:meta/meta.dart';

class GetCharacterBody {
  final int? page;
  final String? name;

  GetCharacterBody({
    @required this.page,
    @required this.name,
  });

  Map<String, dynamic> toApi() {
    return {
      'page': page,
      'name': name,
    };
  }
}