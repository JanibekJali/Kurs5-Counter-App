import 'package:flutter/material.dart';
import 'package:tirkeme1/main.dart';

class TirkemeBir extends StatefulWidget {
  const TirkemeBir({Key key}) : super(key: key);

  @override
  State<TirkemeBir> createState() => _TirkemeBirState();
}

class _TirkemeBirState extends State<TirkemeBir> {
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
        title: const Center(child: Text('Tirkeme 1')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
