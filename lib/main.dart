import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
<<<<<<< HEAD
=======
  const MyApp({super.key});

>>>>>>> alejandro
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
<<<<<<< HEAD
=======
  const CounterScreen({super.key});

>>>>>>> alejandro
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
<<<<<<< HEAD
        title: Text('Contador'),
=======
        title: const Text('Contador'),
>>>>>>> alejandro
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
<<<<<<< HEAD
            Text(
              'Has presionado el botón:',
=======
            const Text(
              'Presionaste el botón:',
>>>>>>> alejandro
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
<<<<<<< HEAD
              icon: Icon(Icons.add),
=======
              icon: const Icon(Icons.add),
>>>>>>> alejandro
              onPressed: _incrementCounter,
              tooltip: 'Sumar',
            ),
            IconButton(
<<<<<<< HEAD
              icon: Icon(Icons.refresh),
=======
              icon: const Icon(Icons.refresh),
>>>>>>> alejandro
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
<<<<<<< HEAD
            child: Icon(Icons.add),
          ),
          
          SizedBox(
=======
            child: const Icon(Icons.add),
          ),
          
          const SizedBox(
>>>>>>> alejandro
            height: 15.0, //Esto es solo para dar margen entre los FAB
          ),

          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Restar',
<<<<<<< HEAD
            child: Icon(Icons.remove),
=======
            child: const Icon(Icons.remove),
>>>>>>> alejandro
          ),
          
        ],
      ),

    );
  }
}