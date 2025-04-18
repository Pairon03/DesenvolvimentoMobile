import 'package:flutter/material.dart';
import 'dados.dart';

class Coleta extends StatefulWidget {
  const Coleta({Key? key}) : super(key: key);

  @override
  _ColetaState createState() => _ColetaState();
}

class _ColetaState extends State<Coleta> {
  int? sexoSelecionado;
  int? estadoCivilSelecionado;
  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  TextEditingController profissaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coleta"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nome
            Text(
              "Nome",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nomeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite seu nome',
                ),
              ),
            ),

            SizedBox(height: 10),

            // Idade
            Text(
              "Idade",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: idadeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite sua idade',
                ),
              ),
            ),

            SizedBox(height: 10),

            // Profissão
            Text(
              "Profissão",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: profissaoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite sua profissão',
                ),
              ),
            ),

            SizedBox(height: 20),

            // SEXO
            Text(
              "Sexo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RadioListTile<int>(
              title: Text("Masculino"),
              value: 1,
              groupValue: sexoSelecionado,
              onChanged: (value) {
                setState(() {
                  sexoSelecionado = value;
                });
              },
            ),
            RadioListTile<int>(
              title: Text("Feminino"),
              value: 2,
              groupValue: sexoSelecionado,
              onChanged: (value) {
                setState(() {
                  sexoSelecionado = value;
                });
              },
            ),

            SizedBox(height: 20),

            // ESTADO CIVIL
            Text(
              "Estado Civil",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RadioListTile<int>(
              title: Text("Solteiro(a)"),
              value: 1,
              groupValue: estadoCivilSelecionado,
              onChanged: (value) {
                setState(() {
                  estadoCivilSelecionado = value;
                });
              },
            ),
            RadioListTile<int>(
              title: Text("Casado(a)"),
              value: 2,
              groupValue: estadoCivilSelecionado,
              onChanged: (value) {
                setState(() {
                  estadoCivilSelecionado = value;
                });
              },
            ),
            RadioListTile<int>(
              title: Text("Divorciado(a)"),
              value: 3,
              groupValue: estadoCivilSelecionado,
              onChanged: (value) {
                setState(() {
                  estadoCivilSelecionado = value;
                });
              },
            ),
            RadioListTile<int>(
              title: Text("Viúvo(a)"),
              value: 4,
              groupValue: estadoCivilSelecionado,
              onChanged: (value) {
                setState(() {
                  estadoCivilSelecionado = value;
                });
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                if (nomeController.text.isNotEmpty &&
                    idadeController.text.isNotEmpty &&
                    profissaoController.text.isNotEmpty &&
                    sexoSelecionado != null &&
                    estadoCivilSelecionado != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dados(
                        nome: nomeController.text,
                        idade: idadeController.text,
                        profissao: profissaoController.text,
                        sexoSelecionado: sexoSelecionado!,
                        estadoCivilSelecionado: estadoCivilSelecionado!,
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Preencha todos os campos!")),
                  );
                }
              },
              child: Text("Ir para Dados"),
            ),
          ],
        ),
      ),
    );
  }
}
