import 'dart:developer';

import 'package:flutter/material.dart';

class StatefullSabak extends StatefulWidget {
  const StatefullSabak({Key key}) : super(key: key);

  @override
  State<StatefullSabak> createState() => _StatefullSabakState();
}

class _StatefullSabakState extends State<StatefullSabak> {
  String tekst = ' Bul ortosu - body';
  void teksttiOzgort() {
    setState(() {});
    tekst = 'Tekst ozgordu';
  }

  @override
  int _count = 0;
  Widget build(BuildContext context) {
    _count++;
    log('Ekran kancha jolu kuruldu ====> $_count');
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
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              teksttiOzgort();
              // print('Tekstti baikap turuu ===> $tekst');

              log('Tekstti baikap turuu ===> $tekst');
            },
            child: Container(
              height: 150.0,
              width: 300.0,
              child: Text(
                tekst,
                style: const TextStyle(fontSize: 35.0),
              ),
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 55.0,
          ),
          GestureDetector(
            onTap: () {
              teksttiOzgort();
              // print('Tekstti baikap turuu ===> $tekst');

              log('Tekstti baikap turuu ===> $tekst');
            },
            child: Container(
              height: 150.0,
              width: 300.0,
              child: Text(
                tekst,
                style: const TextStyle(fontSize: 35.0),
              ),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
