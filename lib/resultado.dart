import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  int pontuacao = 0;

  Resultado(this.pontuacao, {super.key});

  @override
  Widget build(BuildContext context) {
    String result;
    if (pontuacao <= 10) {
      result = 'Humano';
    } else if (pontuacao >= 11 && pontuacao <= 20) {
      result = 'Mistico';
    } else {
      result = "Deus!!!";
    }

    return Center(
      child: Text(
          "${result.toString()} você fez ${pontuacao.toString()} pontos. "),
    );
  }
}
