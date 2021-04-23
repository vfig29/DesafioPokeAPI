import 'dart:convert';
import 'package:desafiopokeapi/pokemonJ.dart';
import 'package:http/http.dart' as http;

class APIManager {
  Future<PokemonJSONOBJ> fetchPokemon(int entry) async {
    return apiResponseValidator(await http
        .get(Uri.https('pokeapi.co', '/api/v2/pokemon/' + entry.toString())));
  }

  PokemonJSONOBJ apiResponseValidator(http.Response requestResponse) {
    switch (requestResponse.statusCode) {
      case 200:
        return PokemonJSONOBJ.createFromJSON(jsonDecode(requestResponse.body));
        break;
      default:
        print('caiu no default');
        return null;
    }
  }
}
