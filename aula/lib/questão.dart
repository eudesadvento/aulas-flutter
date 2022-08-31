import 'package:flutter/material.dart';

class Questoes extends StatelessWidget {
  final String texto;

   Questoes(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(texto
      ,
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    );
  }
}
