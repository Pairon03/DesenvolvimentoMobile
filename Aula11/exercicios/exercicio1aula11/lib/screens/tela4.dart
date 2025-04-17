import 'package:flutter/material.dart';

class Mexico extends StatelessWidget {
  const Mexico({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const TextStyle descriptionStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text('🇲🇽 México'),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tacos",
              style: optionStyle,
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              height: 250,
              color: Colors.grey,
              child: Image.asset(
                'assets/images/tacos.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15.0), // Adicionando espaçamento nas laterais
              child: Text(
                "O taco é um prato tradicional mexicano, feito com uma tortilla (geralmente de milho ou trigo) dobrada ou enrolada e recheada com diversos ingredientes, como carne moída, frango, feijão, queijo, alface, tomate, e molhos. É um prato simples, porém saboroso, muito popular no México e em outras partes do mundo.",
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
