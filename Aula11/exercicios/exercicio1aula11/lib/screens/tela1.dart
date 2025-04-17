import 'package:flutter/material.dart';

class Brasil extends StatelessWidget {
  const Brasil({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const TextStyle descriptionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text('🇧🇷 Brasil'),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Feijoada",
              style: optionStyle,
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              height: 250,
              color: Colors.grey,
              child: Image.asset(
                'assets/images/feijoada.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15.0), // Adicionando espaçamento nas laterais
              child: Text(
                "Prato tradicional da culinária brasileira, composto principalmente por feijão preto e carne de porco (como costela, linguiça e carne seca), cozidos juntos.",
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
