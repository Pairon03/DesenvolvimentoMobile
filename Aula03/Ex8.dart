import 'dart:io';

 void main() {
   print("Digite a quantidade de litros comprada:");
   double litros = double.parse(stdin.readLineSync()!);

   print("Digite o tipo de combustível (E para Etanol, D para Diesel, G para Gasolina):");
   String tipoCombustivel = stdin.readLineSync()!;

   double precoLitro;
   double desconto = 0;
   double valorTotal;

   if (tipoCombustivel == "E") {
     precoLitro = 1.70;
     if (litros >= 15) {
       desconto = 0.04;
     } else {
       desconto = 0.03;
     }
   } else if (tipoCombustivel == "D") {
     precoLitro = 2.00;
     if (litros >= 15) {
       desconto = 0.05;
     } else {
       desconto = 0.03;
     }
   } else if (tipoCombustivel == "G") {
     precoLitro = 4.50;
     if (litros >= 20) {
       desconto = 0.03; 
     } else {
       desconto = 0.0; 
     }
   } else {
     print("Tipo de combustível inválido.");
     return;
   }

   double valorDesconto = precoLitro * litros * desconto;
   valorTotal = (precoLitro * litros) - valorDesconto;

   print("O valor a ser pago é: R\$ ${valorTotal.toStringAsFixed(2)}");
 }