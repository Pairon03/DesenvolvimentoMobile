import 'package:flutter/material.dart';

class Mexico extends StatelessWidget {
  const Mexico ({super.key});
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "México",
            style: optionStyle,
          ),
        )
      ],
    );
  }
}
