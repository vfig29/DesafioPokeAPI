import 'dart:math';

import 'package:desafiopokeapi/APImanager.dart';
import 'pokemonJ.dart';

class PokeModel {
  APIManager apiManager = new APIManager();
  Future<PokemonJSONOBJ> fetchPokemon(int entry) {
    return apiManager.fetchPokemon(entry);
  }

  int randomizer() {
    return 1 + Random().nextInt(150);
  }
}
