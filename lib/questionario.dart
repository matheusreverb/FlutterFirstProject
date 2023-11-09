import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) response;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.response,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((textoResp) {
          return Resposta(textoResp['texto'].toString(),
              () => response(int.parse(textoResp['pontos'].toString())));
        }).toList(),
      ],
    );
  }
}
