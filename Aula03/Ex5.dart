import 'dart:io';

void main() {
   print("Digite a nota do primeiro aluno:");
   double nota1 = double.parse(stdin.readLineSync()!);

   print("Digite a nota do segundo aluno:");
   double nota2 = double.parse(stdin.readLineSync()!);

   double media = (nota1 + nota2) / 2;

   print("Média: $media");

   if (media >= 7) {
     print("Aprovado");
   } else if (media >= 4) {
     print("Exame");
   } else {
     print("Reprovado");
   }
 }