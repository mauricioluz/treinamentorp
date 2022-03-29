import 'dart:math';

import 'package:flutter/material.dart';
import 'widgets/listtile/custom_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int valorInicial = 10;

  List numeros = [10, 11, 43, 24, 69, 71, 121, 32, 32, 34];
  List nomes = [
    "Mauricião",
    "Danilão",
    1,
    {"nome": "Sei lá", "sobrenome": "tchau"},
    "Vilmarzão",
    "China",
    "Mazzettão",
    "Mendigão",
    "Personal",
    "Mão no volante",
    "Mão no carinho",
  ];

  _buildFloatingButton() => FloatingActionButton(
      backgroundColor: Colors.red,
      child: Icon(Icons.add, color: Colors.white),
      onPressed: () {
        setState(() {
          valorInicial = Random().nextInt(100);
        });
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red, title: const Text("Minha App Bar")),
      floatingActionButton: _buildFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Mazome", style: TextStyle(fontSize: 24)),
                const SizedBox(height: 20),
                SizedBox(
                  height: 62,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: numeros.length,
                      itemBuilder: (BuildContext _, int index) {
                        return CustomListTile(valor: numeros.elementAt(index));
                      }),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                      itemCount: nomes.length,
                      itemBuilder: (_, index) {
                        var valor = nomes[index];
                        if (valor is Map) {
                          valor = "${valor["nome"]} - ${valor["sobrenome"]}";
                        }
                        return Text(valor.toString());
                      }),
                )
              ])),
    );
  }
}
