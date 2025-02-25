import 'dart:io'; 

void main() {
  print("Digite seu nome: ");
  String? nome = stdin.readLineSync();

  print("Digite o seu curso: ");
  String? curso = stdin.readLineSync();
  
  print("Digite a sua idade: ");
  String? idade = stdin.readLineSync();
  
  print("Seu nome é $nome, você tem $idade anos e o seu curso é $curso");
}