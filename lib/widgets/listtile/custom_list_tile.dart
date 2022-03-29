import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:treinamentorp/widgets/texts/custom_text.dart';

class CustomListTile extends StatelessWidget {
  final int valor;
  const CustomListTile({Key? key, required this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: ListTile(
        leading: Icon(Icons.check,
            size: 32, color: valor > 10 ? Colors.green : Colors.red),
        title: CustomText(valor: valor),
        subtitle: CustomText(valor: valor * 2),
        trailing: Icon(Icons.close, color: Colors.pink),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
