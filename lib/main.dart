import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

     
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      
      _counter--;
    });
    
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Presionaste el botón:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: _incrementCounter,
              tooltip: 'Sumar',
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _resetCounter,
              tooltip: 'Reiniciar',
            ),
          ],
        ),
      ),

     floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            child: const Icon(Icons.add),
          ),
          
          const SizedBox(
            height: 15.0, //Esto es solo para dar margen entre los FAB
          ),

          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Restar',
            child: const Icon(Icons.remove),
          ),
          
        ],
      ),

    );
  }
}