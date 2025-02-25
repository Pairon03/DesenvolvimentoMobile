import 'dart:io';

 calcularSalarioLiquido(double salarioBruto){
     double desconto = salarioBruto * 0.1;
     double bonificacao = salarioBruto * 0.2;
     double salarioLiquido = salarioBruto - desconto + bonificacao;
     print("O salário líquido é: $salarioLiquido");
 }

 void main(){
 print("Digite o salário bruto para que possamos calcular o salário líquido:");
 double salarioBruto = double.parse(stdin.readLineSync()!);
 calcularSalarioLiquido(salarioBruto);
 }