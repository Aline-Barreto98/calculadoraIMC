import 'dart:io';
import 'class/pessoa.dart';

void main() {
  calculadoraIMC();
}

calculadoraIMC() {
  try {
    stdout.write("==== Digite seu nome ====\n");
    String nome = stdin.readLineSync()!;

    stdout.write("==== Digite seu peso ====\n");
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write("==== Digite sua altura ====\n");
    double altura = double.parse(stdin.readLineSync()!);

    if (peso <= 0 || altura <= 0) {
      print("Peso e altura devem ser valores positivos e maiores que zero.");
      return;
    }

    Pessoa pessoa = Pessoa(nome, peso, altura);
    print("\nNome: ${pessoa.nome}");
    double resultado = pessoa.calcImcExpression().roundToDouble();
    print("O valor do IMC é: ${resultado.toStringAsFixed(2)}");

    String statusCorporal = pessoa.getStatusCorporal(resultado);
    print("Seu status corporal: $statusCorporal\n");
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
