import 'dart:math';

import 'package:flutter/material.dart';
import 'package:treinamentorp/custom_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int valorInicial = 10;

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
              CustomText(valor: valorInicial),
              CustomText(valor: valorInicial * 2),
              CustomText(valor: valorInicial * 3),
              CustomText(valor: valorInicial * 12),
            ]),
      ),
    );
  }
}
