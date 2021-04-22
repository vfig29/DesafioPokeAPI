import 'package:desafiopokeapi/controller.dart';
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
        children: [
          ElevatedButton(
              onPressed: () {
                pokeController.loadPokemon();
              },
              child: Text("Discover!"))
        ],
      ),
    );
  }
}
