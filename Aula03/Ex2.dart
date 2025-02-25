import 'dart:io';

void calcularTriangulo(double b, double h){
     double area = (b * h) / 2;
     print("A área do triângulo é: $area");
 }

 void main(){
  print("Digite a base do triângulo:");
  double b = double.parse(stdin.readLineSync()!);

  print("Digite a altura do triângulo:");
  double h = double.parse(stdin.readLineSync()!);

  calcularTriangulo(b,h);
 }
