import 'dart:io';

void calcularPrecoEnergia() {
  print("Qual a quantidade de kWh consumida: ");
  double kWh = double.parse(stdin.readLineSync()!);

  print("Qual o tipo de instalação (R para Residência, I para Indústrias, C para Comércio): ");
  String tipoInstalacao = stdin.readLineSync()!.toUpperCase();

  double precoUnitario;

  if (tipoInstalacao == 'R') {
    precoUnitario = 0.50; // Exemplo de preço para Residência
  } else if (tipoInstalacao == 'I') {
    precoUnitario = 0.40; // Exemplo de preço para Indústrias
  } else if (tipoInstalacao == 'C') {
    precoUnitario = 0.45; // Exemplo de preço para Comércio
  } else {
    print("Tipo de instalação inválido.");
    return;
  }

  double valorTotal = precoUnitario * kWh;
  print("Preço total a pagar: R\$ $valorTotal");
}