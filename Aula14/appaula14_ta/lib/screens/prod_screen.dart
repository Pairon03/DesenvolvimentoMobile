import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Produto_screen extends StatefulWidget {
  const Produto_screen({super.key});

  @override
  State<Produto_screen> createState() => _Produto_screenState();
}

class _Produto_screenState extends State<Produto_screen> {
  // função para exibir os dados assim que a tela for carregada
  void initState() {
    super.initState();
  }

  // cria variavel dado
  List dado = [];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
