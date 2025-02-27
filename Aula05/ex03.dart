/*
Exemplo 3 - Programação orientada a objeto
27.02.2025
*/

class Pessoa {
  String? _nome; // _ representa elemento privado

  // Cria metodo setnome

  void setNome(String nome) {
    _nome = nome;
  }

  String? getNome() {
    return _nome;
  }

  void main() {
    Pessoa cliente = Pessoa();
    cliente._nome = "Caua";
    print("Nome do cliente: ${cliente._nome}");
    print("Nome do cliente: ${cliente.getNome()} ");
  }
}
