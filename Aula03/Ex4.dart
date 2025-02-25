import 'dart:io';
void converterMoeda() {
  print("Digite o valor em reais (R\$): ");
  double valorReais = double.parse(stdin.readLineSync()!);

  print("Escolha a moeda:");
  print("1. Euro (EUR)");
  print("2. Dólar (USD)");
  print("3. Franco Suíço (CHF)");
  
  int escolha = int.parse(stdin.readLineSync()!);
  
  if (escolha == 1) {
    double conversao = valorReais / 7.00;  // Euro
    print("$valorReais R\$ é igual a ${conversao.toStringAsFixed(2)} EUR");
  } else if (escolha == 2) {
    double conversao = valorReais / 6.56;  // Dólar
    print("$valorReais R\$ é igual a ${conversao.toStringAsFixed(2)} USD");
  } else if (escolha == 3) {
    double conversao = valorReais / 4.35;  // Franco Suíço
    print("$valorReais R\$ é igual a ${conversao.toStringAsFixed(2)} CHF");
  } else {
    print("Inválido");
  }
}