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
        title: Text('Contador'),
        //title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Has presionado el botón:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: _decrementCounter,
                  tooltip: 'Restar',
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _incrementCounter,
                  tooltip: 'Sumar',
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: _resetCounter,
              tooltip: 'Reiniciar',
            ),
          ],
        ),
      ),

     
      

    );
  }
}


     /*floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            child: Icon(Icons.add),
          ),
          
          SizedBox(
            height: 15.0, //Esto es solo para dar margen entre los FAB
          ),

          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Restar',
            child: Icon(Icons.remove),
          ),
          
        ],
      ),*/

 