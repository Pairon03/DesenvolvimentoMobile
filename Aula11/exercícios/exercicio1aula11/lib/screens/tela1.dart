import 'package:flutter/material.dart';

class Brasil extends StatelessWidget {
  const Brasil ({super.key});
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,fontWeight:FontWeight.bold );
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
      Center(
        child: Text(
          "Brasil",style: optionStyle,
        ),
      )
     ],
    );
  }
}