import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String errorText;
  final bool isRequired;
  final bool isReadOnly;
  final TextInputType inputType;
  final TextCapitalization textCapitalization;
  const CustomTextInput(
      {Key? key,
      required this.controller,
      required this.labelText,
      this.errorText = "Campo obrigatório",
      this.isRequired = false,
      this.isReadOnly = false,
      this.inputType = TextInputType.text,
      this.textCapitalization = TextCapitalization.none})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      textCapitalization: textCapitalization,
      readOnly: isReadOnly,
      // maxLength: 20,
      // maxLengthEnforcement: MaxLengthEnforcement.enforced,
      validator: (text) {
        if (isRequired) {
          if (text!.isEmpty) {
            return errorText;
          }
        }
      },
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
