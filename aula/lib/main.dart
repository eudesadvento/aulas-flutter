import 'package:flutter/material.dart';
import './questão.dart';

void main() {
  runApp(Eudes());
}

class Eudes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Eudeslima();
}

class Eudeslima extends State<Eudes> {
  var indice = 0;
  void listagem() {
    setState(() {
      indice++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var perguntas = [
      'Nome?',
      'Idade?',
      'Telefone?',
      'Bairro?',
      'Endereço?',
    ];

    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('ENTREVISTA')),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Questoes(
              perguntas[indice],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: listagem,
                child: Container(
                    width: 330,
                    margin: EdgeInsets.all(10),
                    child: Center(
                        child: Text(
                      'clique',
                      style: TextStyle(fontSize: 30),
                    ))),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.blue)),
              ),
            ),
            Center(
              child: Stack( alignment:Alignment.center ,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.green,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.yellow,
                  ),
                  Container(
                    
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }









// import 'package:flutter/material.dart';

// void main() {
//   runApp(PerguntasApp());
// }

// class PerguntasApp extends StatefulWidget {
//   var perguntaSelecionada = 0;
//   void responder() {
//     perguntaSelecionada++;
//     print("pergunta respondida");
//   }

//   @override
//   State<PerguntasApp> createState() => PerguntasAppState();
// }

// class PerguntasAppState extends State<PerguntasApp> {


//   @override
//   Widget build(BuildContext context) {
//     final perguntas = [
//       'qual é sua cor favorita?',
//       'qual seu animal fasvorito ',
//     ];

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text("perguntas"),
//           ),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(perguntas[0]),
//               ElevatedButton(
//                 onPressed: responder,
//                 child: const Text('resposta 1'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   print("resposta 02");
//                 },
//                 child: const Text('resposta 2'),
//               ),
//               ElevatedButton(
//                 onPressed: () => print("resposta 03"),
//                 child: const Text('resposta 3'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }