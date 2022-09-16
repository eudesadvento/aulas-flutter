import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntasSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntasSelecionada++;
    });
  }

  final _perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'Resposta': ['preto', 'vermelho', 'verde', 'branco'],
    },
    {
      'texto': 'Qual é o seu animal favorita?',
      'Resposta': ['coelho', 'cobra', 'elefante', 'leão'],
    },
    {
      'texto': 'Qual é o seu intrutor favorita?',
      'Resposta': ['Maria', 'João', 'Leo', 'Pedro'],
    },
  ];
  bool get temPerguntaSelecionada {
    return _perguntasSelecionada < _perguntas.length;
  }

  @override
  Widget build(Object context) {
    // List<Widget> respostas = [];
    // for (String textoResp
    //     in perguntas[_perguntasSelecionada].cast()['Resposta']) {
    //   respostas.add(Resposta(textoResp, _responder));
    // }

    List<String> respostas = temPerguntaSelecionada ?
        _perguntas[_perguntasSelecionada].cast()['Resposta']:
    
         [];
    respostas.map((t) => Resposta(t, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child:  Text('Perguntas')),
        ),
        body: temPerguntaSelecionada ?       Column(
          children: <Widget>[
            Questao(_perguntas[_perguntasSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList()
          ],
        ):null,
      ),
    );
  }
}
