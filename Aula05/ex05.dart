/*
Exemplo classe e objeto com this
Herança
27.02.2025
*/

//  Classe mae
class Animal {
  String? nome;
  int? idade;
  void dormir() {
    print("O animal esta dormindo");
  }
}

//  classe filha
class Cachorro extends Animal {
  void latir() {
    print("O animal ${nome} esta latindo");
  }
}
