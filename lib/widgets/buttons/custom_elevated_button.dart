import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Function() onPressed;

  CustomElevatedButton(
      {required this.text, this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: color ?? Colors.black),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(fontSize: 18),
          )),
    );
  }
}
