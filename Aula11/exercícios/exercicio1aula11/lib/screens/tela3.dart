import 'package:flutter/material.dart';

class Japao extends StatelessWidget {
  const Japao ({super.key});
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Japão",
            style: optionStyle,
          ),
        )
      ],
    );
  }
}
