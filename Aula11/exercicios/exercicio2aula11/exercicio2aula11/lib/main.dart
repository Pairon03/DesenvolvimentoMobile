import 'package:flutter/material.dart';
import 'package:exercicio2aula11/screens/coleta.dart';

void main() {
  runApp(NavBottom());
}

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Coleta(),
    );
  }
}
