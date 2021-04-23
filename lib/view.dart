import 'package:desafiopokeapi/controller.dart';
import 'package:desafiopokeapi/pokemonJ.dart';
import 'package:flutter/material.dart';

class PokeView extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<PokeView> {
  PokeController pokeController = new PokeController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder<PokemonJSONOBJ>(
              future: pokeController.loadedPokemon,
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return CircularProgressIndicator();
                }

                if (snapshot.hasData) {
                  print("tem");
                  return Container(
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          snapshot.data.pokeName.inCaps,
                          style: TextStyle(fontSize: 40),
                        )),
                        Container(
                            child: Image.network(snapshot.data.mainSpriteUrl,
                                fit: BoxFit.fill),
                            width: 200,
                            height: 200),
                      ],
                    ),
                  );
                } else if (snapshot.hasError) {
                  print('erro');
                } else {
                  print("n tem");
                }
                return Container();
              }),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  pokeController.loadRandomPokemon();
                });
              },
              child: Text(
                "Discover!",
                style: TextStyle(fontSize: 36),
              )),
        ],
      ),
    );
  }
}

extension CapExtensionSimplified on String {
  //
  String get inCaps =>
      this.length > 0 ? '${this[0].toUpperCase()}${this.substring(1)}' : '';
  String get allInCaps => this.toUpperCase();
  String get capitalizeFirstofEach => this
      .replaceAll(RegExp(' +'), ' ')
      .split(" ")
      .map((str) => str.inCaps)
      .join(" ");
}
