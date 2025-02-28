/*
Exercício 2
27.02.2025
*/

//  Classe mae
class Animal {
  String? nome;
  int? idade;
  String? cor;
  String? raca;
  double? peso;
}
Animal(this.nome, this.idade, this.cor, this.raca, this.peso);
void acordar() {
  print("O animal esta acordado");
}

// classe filha

class Passaro extends Animal {
  Passaro(nome, idade, cor, raca, peso) : super(nome, idade, cor, raca, peso);
}

class Cachorro extends Animal {
  Cachorro(nome, idade, cor, raca, peso) : super(nome, idade, cor, raca, peso);
}

class Tigre extends Animal {
  // utiliza o this para a cor, pois é um parametro so da classe Tigre
  Tigre(nome, idade, cor, raca, peso) : super(nome, idade, cor, raca, peso);
}

class Peixe extends Animal {
  Peixe(nome, idade, cor, raca, peso) : super(nome, idade, cor, raca, peso);
}

Animal(this.nome, this.idade, this.cor, this.raca, this.peso);
void dormir() {
  print("O animal esta dormindo");
}

void main() {
  Passaro Fifi = Passaro("Fifi", 5, "Verde", "Bem-te-vi", 3);
  Fifi.acordar();
  void dormir();
  Cachorro Hulk = Cachorro("Hulk", 2, "Marrom", "Vira-lata", 30);
  Tigre Memphis = Tigre("Memphis", 20, "Branco", "Tigre", 80);
  Peixe Gil = Peixe("Gil", 1, "Azul", "Peixe-boi", 1);
}
