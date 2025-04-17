import 'package:flutter/material.dart';

class Italia extends StatelessWidget {
  const Italia({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const TextStyle descriptionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text('🇮🇹 Itália'),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pizza",
              style: optionStyle,
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              height: 250,
              color: Colors.grey,
              child: Image.asset(
                'assets/images/pizza.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15.0), // Adicionando espaçamento nas laterais
              child: Text(
                "Prato tradicional italiano, geralmente composto por uma massa redonda coberta com molho de tomate, queijo e outros ingredientes como carnes, legumes, ou frutas. A pizza é assada em forno quente até a crosta ficar dourada e o queijo derretido.",
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
