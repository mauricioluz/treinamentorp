import 'package:flutter/material.dart';
import 'package:treinamentorp/pages/characters_page.dart';
import 'package:treinamentorp/widgets/appbar/custom_app_bar.dart';
import 'package:treinamentorp/widgets/buttons/custom_elevated_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Treinamento RP"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Este aplicativo faz parte do treinamento RP",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(
                text: "Começar",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CharactersPage()));
                })
          ],
        ),
      ),
    );
  }
}
