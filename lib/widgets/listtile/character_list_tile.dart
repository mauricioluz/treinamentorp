import 'package:flutter/material.dart';
import 'package:treinamentorp/models/character.dart';

class CharacterListTile extends StatelessWidget {
  final Character character;
  const CharacterListTile({Key? key, required this.character})
      : super(key: key);

  _buildCharacterData() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(character.name,
              textAlign: TextAlign.end,
              // softWrap: false,
              // overflow: TextOverflow.ellipsis,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text(character.species),
          Text(character.gender),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.pushNamed(context, "/character_page", arguments: character),
      child: SizedBox(
        height: 120,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Material(
            //   elevation: 8,
            //   color: Colors.transparent,
            //   child: Container(
            //     height: 100,
            //     // width: MediaQuery.of(context).size.width * 0.8,
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         // border: Border.all(color: Colors.grey),
            //         borderRadius: BorderRadius.circular(10)),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.end,
            //       children: [
            //         const SizedBox(width: 110),
            //         _buildCharacterData(),
            //         const SizedBox(width: 20),
            //         const Icon(
            //           Icons.keyboard_arrow_right,
            //           size: 42,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 100,
                // width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(width: 110),
                    _buildCharacterData(),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      size: 42,
                    )
                  ],
                ),
              ),
            ),
            // Positioned(
            //     left: 10,
            //     top: 5,
            //     child: Card(
            //       elevation: 8,
            //       child: Container(
            //         width: 100,
            //         height: 100,
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: NetworkImage(character.image),
            //                 fit: BoxFit.cover),
            //             // color: Colors.blue,
            //             borderRadius: BorderRadius.circular(10)),
            //       ),
            //     ))
            Positioned(
                left: 10,
                top: 5,
                child: Hero(
                  tag: character.id,
                  child: Material(
                    elevation: 8,
                    color: Colors.transparent,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(character.image),
                              fit: BoxFit.cover),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
