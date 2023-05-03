import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class myButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  myButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color.fromARGB(255, 0, 48, 88),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
