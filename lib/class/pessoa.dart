class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcImcExpression() {
    if (altura == 0) {
      throw Exception("Altura não pode ser zero.");
    }
    return peso / (altura * altura);
  }

  String getStatusCorporal(double resultado) {
    if (resultado < 16) {
      return "Magreza grave";
    } else if (resultado < 17) {
      return "Magreza moderada";
    } else if (resultado < 18.5) {
      return "Magreza leve";
    } else if (resultado <= 25) {
      return "Saudável";
    } else if (resultado < 30) {
      return "Sobrepeso";
    } else if (resultado < 35) {
      return "Obesidade grau 1";
    } else if (resultado < 40) {
      return "Obesidade grau 2 (Severa)";
    } else {
      return "Obesidade grau 3 (Mórbida)";
    }
  }
}
