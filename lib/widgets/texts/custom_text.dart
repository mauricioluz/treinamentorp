import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final int valor;
  const CustomText({Key? key, required this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(valor.toString(), style: TextStyle(fontSize: 30));
  }
}
