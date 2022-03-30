import 'package:flutter/material.dart';
import 'package:treinamentorp/controller/api_controller.dart';
import 'package:treinamentorp/models/character.dart';
import 'package:treinamentorp/pages/home_page.dart';
import 'package:treinamentorp/widgets/appbar/custom_app_bar.dart';
import 'package:treinamentorp/widgets/buttons/custom_elevated_button.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final controller = ApiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Personagens"),
        body: FutureBuilder<List<Character>>(
          future: controller.fetchCharacters(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) {
                    Character character = snapshot.data![index];
                    return Text(character.name);
                  });
            } else if (snapshot.hasError) {
              return const Center(child: Text("Não deu boa"));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
