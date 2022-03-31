import 'package:flutter/material.dart';
import 'package:treinamentorp/models/character.dart';
import 'package:treinamentorp/widgets/appbar/custom_app_bar.dart';
import 'package:treinamentorp/widgets/inputs/custom_text_input.dart';

class SingleCharacterPage extends StatefulWidget {
  final Character character;
  const SingleCharacterPage({Key? key, required this.character})
      : super(key: key);

  @override
  State<SingleCharacterPage> createState() => _SingleCharacterPageState();
}

class _SingleCharacterPageState extends State<SingleCharacterPage> {
  final nomeController = TextEditingController();
  final statusController = TextEditingController();
  final speciesController = TextEditingController();
  final genderController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nomeController.text = widget.character.name;
    statusController.text = widget.character.status;
    speciesController.text = widget.character.species;
    genderController.text = widget.character.gender;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.character.name),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Hero(
              tag: widget.character.id,
              child: Image.network(
                widget.character.image,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            CustomTextInput(controller: nomeController, labelText: "Nome"),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CustomTextInput(
                      controller: statusController, labelText: "Status"),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: CustomTextInput(
                      controller: speciesController, labelText: "Espécie"),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomTextInput(controller: genderController, labelText: "Gênero"),
          ],
        ),
      ),
    );
  }
}
