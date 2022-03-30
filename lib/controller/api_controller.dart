import 'package:dio/dio.dart';
import 'package:treinamentorp/models/character.dart';
import 'package:treinamentorp/services/api_provider.dart';

class ApiController {
  final Dio dio = Dio(ApiProvider.options);

  Future<List<Character>> fetchCharacters() async {
    List<Character> characters = [];
    try {
      Response response = await dio.get("/character");

      if (response.statusCode == 200) {
        characters = response.data["results"]
            .map<Character>((json) => Character.fromJSON(json))
            .toList();
      }
    } on Exception catch (e) {
      print(e);
    }
    return characters;
  }
}
