/*
Exercício 1
27.02.2025
*/

//  Classe mae
class Animal {
  String? nome;
  int? idade;
  String? cor;
  String? raca;
}

void main() {
  // instancio o objeto chamado minhaCasa
  Animal meuCachorro = Animal();
  meuCachorro.nome = "Thor";
  meuCachorro.idade = 3;
  meuCachorro.cor = "Marrom";
  meuCachorro.raca = "Vira-lata";
  print("Meu cachorro se chama ${meuCachorro.nome}");
  print("Ele tem ${meuCachorro.idade} anos");
  print("Meu cachorro é ${meuCachorro.cor}");
  print("Meu cachorro é um ${meuCachorro.raca}");
}
