import 'package:flutter/material.dart';

void main() {
  runApp(const MinhaClasse());
}

class MinhaClasse extends StatelessWidget {

  const MinhaClasse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MinhaPrimeiraPagina(titulo: 'Primeiro Programa'),
    );
  }
}

class MinhaPrimeiraPagina extends StatefulWidget {
  const MinhaPrimeiraPagina({super.key, required this.titulo});

  final String titulo;

  @override
  State<MinhaPrimeiraPagina> createState() => _MinhaPrimeiraPaginaState();
}

class _MinhaPrimeiraPaginaState extends State<MinhaPrimeiraPagina> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
      ),
      body: Center(
        child: Column(
 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Você pressionou o botão esse númnero de vezes:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
  }
}
