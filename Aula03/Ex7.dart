import 'dart:io';
  void main() {
  print("Digite o valor do primeiro modelo de carro:");
  double valor1 = double.parse(stdin.readLineSync()!);

  print("Digite o valor do segundo modelo de carro:");
  double valor2 = double.parse(stdin.readLineSync()!);

   print("Digite o valor do terceiro modelo de carro:");
   double valor3 = double.parse(stdin.readLineSync()!);

   double maisCaro = valor1;
   double maisBarato = valor1;

   if (valor2 > maisCaro) maisCaro = valor2;
   if (valor3 > maisCaro) maisCaro = valor3;

   if (valor2 < maisBarato) maisBarato = valor2;
   if (valor3 < maisBarato) maisBarato = valor3;

   print("O carro mais caro custa: R\$ $maisCaro");
   print("O carro mais barato custa: R\$ $maisBarato");
 }