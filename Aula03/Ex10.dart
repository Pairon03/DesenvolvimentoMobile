import 'dart:io';

void main() {
  print("Digite o primeiro valor:");
  double valor1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo valor:");
  double valor2 = double.parse(stdin.readLineSync()!);

  print("Digite o terceiro valor:");
  double valor3 = double.parse(stdin.readLineSync()!);

  print("Digite o quarto valor:");
  double valor4 = double.parse(stdin.readLineSync()!);

  print("Escolha a operação (+, -, *, /):");
  String operacao = stdin.readLineSync()!;

  double resultado;

  switch (operacao) {
    case "+":
      resultado = valor1 + valor2 + valor3 + valor4;
      break;
    case "-":
      resultado = valor1 - valor2 - valor3 - valor4;
      break;
    case "*":
      resultado = valor1 * valor2 * valor3 * valor4;
      break;
    case "/":
      if (valor2 != 0 && valor3 != 0 && valor4 != 0) {
        resultado = valor1 / valor2 / valor3 / valor4;
      } else {
        print("Erro: Divisão por zero.");
        return;
      }
      break;
    default:
      print("Operação inválida.");
      return;
  }

  print("O resultado da operação é: $resultado");
}
