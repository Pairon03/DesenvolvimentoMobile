import 'package:flutter/material.dart';

class Dados extends StatelessWidget {
  final String nome;
  final String idade;
  final String profissao;
  final int sexoSelecionado;
  final int estadoCivilSelecionado;

  const Dados({
    Key? key,
    required this.nome,
    required this.idade,
    required this.profissao,
    required this.sexoSelecionado,
    required this.estadoCivilSelecionado,
  }) : super(key: key);

  // Função auxiliar para converter código numérico em texto legível
  String getSexoTexto() {
    switch (sexoSelecionado) {
      case 1:
        return "Masculino";
      case 2:
        return "Feminino";
      default:
        return "Não informado";
    }
  }

  String getEstadoCivilTexto() {
    switch (estadoCivilSelecionado) {
      case 1:
        return "Solteiro(a)";
      case 2:
        return "Casado(a)";
      case 3:
        return "Divorciado(a)";
      case 4:
        return "Viúvo(a)";
      default:
        return "Não informado";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nome: $nome",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              "Idade: $idade",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              "Profissão: $profissao",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              "Sexo: ${getSexoTexto()}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              "Estado Civil: ${getEstadoCivilTexto()}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
