// biblioteca flutter material permite criar od widgets para o app no android
import 'package:flutter/material.dart';

// void main função principal no código
void main() {
  //runApp função que chama a classe do app
  runApp(Telaapp());
}

class Telaapp extends StatelessWidget {
  const Telaapp({super.key});

// polimorfismo que permite tratar objetos de diferentes formas
  @override
  // Widget build método que irá construir a nossa tela
  Widget build(BuildContext context) {
    // MaterialApp vai permitir construir a tela do app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        // espaçamento primario
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 180,
                height: 80,
                color: Colors.red,
                child: Text(
                  "Senai",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, decoration: TextDecoration.none),
                ),
              ),
            ],
          ),
          Text(
            "Mobile 1 - Flutter",
            style: TextStyle(
                fontSize: 30,
                decoration: TextDecoration.none,
                color: Colors.blue),
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.red,
          ),
          ElevatedButton(
              onPressed: () {
                print("Botao pressionado");
              },
              child: Text("Mensagem")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.deepOrange,
              ),
            ],
          )
        ],
      ),
    );
  }
}
