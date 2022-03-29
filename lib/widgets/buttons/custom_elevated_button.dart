import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color? color;
  final IconData icon;
  final Function() onPressed;

  CustomElevatedButton(
      {required this.text,
      this.color,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(primary: color ?? Colors.black),
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(
            text,
            style: TextStyle(fontSize: 18),
          )),
    );
  }
}
