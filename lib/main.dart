import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: const CounterScreen(),
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
      CounterWidget(), // Agrega el CounterWidget aquí
    ],
  ),
),

class CustomAmountButton extends StatefulWidget {
  @override
  _CustomAmountButtonState createState() => _CustomAmountButtonState();
}

class _CustomAmountButtonState extends State<CustomAmountButton> {
  final _formKey = GlobalKey<FormState>();
  int _customAmount = 0;

  void _addCustomAmount() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _counter += _customAmount;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Cantidad personalizada',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Ingrese una cantidad';
                }
                return null;
              },
              onSaved: (value) => _customAmount = int.parse(value!),
            ),
          ),
          ElevatedButton(
            onPressed: _addCustomAmount,
            child: Text('Agregar'),
          ),
        ],
      ),
    );
  }
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
            Text(
              'Has presionado el botón:',
            const Text(
              'Presionaste el botón:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _incrementCounter,
              tooltip: 'Sumar',
            ),
            IconButton(
              icon: Icon(Icons.refresh),
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
          
          SizedBox(
            child: const Icon(Icons.add),
          ),
          
          const SizedBox(
            height: 15.0, //Esto es solo para dar margen entre los FAB
          ),

          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Restar',
            child: const Icon(Icons.remove),
            child: const Icon(Icons.remove),
          ),
          
        ],
      ),

    );
  }
}