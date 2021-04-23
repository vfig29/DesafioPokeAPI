import 'package:desafiopokeapi/model.dart';
import 'package:desafiopokeapi/pokemonJ.dart';

class PokeController {
  PokeModel pokeModel = new PokeModel();
  Future<PokemonJSONOBJ> loadedPokemon;

  void loadRandomPokemon() {
    loadedPokemon = pokeModel.fetchPokemon(pokeModel.randomizer());
  }
}
