import 'dart:io'; // biblioteca para permitir que os usuarios digite valores via teclado

void main() {
  String nome;
  int idade;
  print("Digite seu nome");
  nome = stdin
      .readLineSync()!; // stdin.readlineSync pega o valores digitados via teclado
  print("Digite sua idade");
  idade = int.parse(stdin.readLineSync()!);
  print("Ola ${nome} e idade ${idade}");
}
