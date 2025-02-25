import 'dart:io';

void compararIdades() {
  print("Qual a idade da primeira pessoa: ");
  int idade1 = int.parse(stdin.readLineSync()!);

  print("Qual a idade da segunda pessoa: ");
  int idade2 = int.parse(stdin.readLineSync()!);

  if (idade1 > idade2) {
    print("A primeira pessoa é mais velha");
  } else if (idade2 > idade1) {
    print("A segunda pessoa é mais velha");
  } else {
    print("As duas pessoas tem a mesma idade");
  }
}