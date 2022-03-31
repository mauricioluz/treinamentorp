import 'package:flutter/material.dart';
import 'package:treinamentorp/controller/api_controller.dart';
import 'package:treinamentorp/models/character.dart';
import 'package:treinamentorp/pages/home_page.dart';
import 'package:treinamentorp/widgets/appbar/custom_app_bar.dart';
import 'package:treinamentorp/widgets/buttons/custom_elevated_button.dart';
import 'package:treinamentorp/widgets/listtile/character_list_tile.dart';

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
        appBar: const CustomAppBar(title: "Personagens"),
        body: FutureBuilder<List<Character>>(
          future: controller.fetchCharacters(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: snapshot.data!.length,
                  separatorBuilder: (_, index) {
                    return const SizedBox(height: 20);
                  },
                  itemBuilder: (_, index) {
                    Character character = snapshot.data![index];
                    return CharacterListTile(character: character);
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
