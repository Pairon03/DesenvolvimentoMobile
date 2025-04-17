import 'package:flutter/material.dart';

class Japao extends StatelessWidget {
  const Japao({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const TextStyle descriptionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text('🇯🇵 Japão'),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sushi",
              style: optionStyle,
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              height: 250,
              color: Colors.grey,
              child: Image.asset(
                'assets/images/sushi.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15.0), // Adicionando espaçamento nas laterais
              child: Text(
                "O sushi é uma iguaria japonesa feita com arroz temperado com vinagre e peixes crus ou outros frutos do mar, frequentemente acompanhados de vegetais, algas marinhas ou ovos. A forma mais comum é o nigiri (bolinho de arroz coberto com peixe) e o maki (rolos de arroz e peixe envoltos em alga).",
                style: descriptionStyle, // Explicação com fonte menor
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
