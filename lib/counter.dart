import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          'Bul Bashy- header',
          style: TextStyle(color: Colors.black),
        )),
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          height: 150.0,
          width: 150.0,
          child: const Text(
            'Bul header- bashy',
            style: TextStyle(fontSize: 35.0),
          ),
          color: Colors.blue,
        ),
      ),
      bottomNavigationBar: Container(
        height: 150.0,
        width: 150.0,
        child: const Text(
          'Bul ayagy- footer',
          style: TextStyle(fontSize: 35.0),
        ),
        color: Colors.blue,
      ),
    );
  }
}
