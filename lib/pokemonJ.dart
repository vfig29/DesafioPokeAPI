class PokemonJSONOBJ {
  String pokeName;
  String mainSpriteUrl;

  PokemonJSONOBJ.createFromJSON(Map<String, dynamic> jsonMap) {
    pokeName = jsonMap['name'];
    mainSpriteUrl = jsonMap['sprites']['front_default'];
  }
}
