import 'package:flutter/material.dart';

class Italia extends StatelessWidget {
  const Italia({super.key});
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Italia",
            style: optionStyle,
          ),
        )
      ],
    );
  }
}
