import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  const CustomTextInput(
      {Key? key, required this.controller, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.none,
      readOnly: true,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          // hintText: "Informe seu nome",
          border: InputBorder.none,
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
    );
  }
}
