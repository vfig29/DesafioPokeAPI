import 'package:desafiopokeapi/model.dart';

class PokeController {
  PokeModel pokeModel = new PokeModel();

  loadPokemon() {
    pokeModel.fetchPokemon();
  }
}
