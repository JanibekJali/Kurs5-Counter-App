import 'package:flutter/material.dart';
import 'package:tirkeme1/elinchi_bet.dart';

class Tapshyrma extends StatefulWidget {
  const Tapshyrma({Key key}) : super(key: key);

  @override
  State<Tapshyrma> createState() => _TapshyrmaState();
}

class _TapshyrmaState extends State<Tapshyrma> {
  int _counter = 4;
  String textKetti;
  void _azaituu() {
    setState(() {
      if (_counter == 0) {
        _counter++;
      }
      _counter--;
    });
  }

  void _koboituu() {
    setState(() {
      // if (_counter == 0) {
      //   _counter++;
      // }
      // Uzun formasy
      _counter = _counter + 1;
      // kyska formasy
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: const Center(
          child: Text(
            'Тапшырма 01',
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
        ),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EkinchiBet(
                          kelgenSan: _counter,
                        ))),
            child: Container(
              // color: const Color(0xff46F3F3),
              height: 48.0,
              width: 294.0,
              decoration: const BoxDecoration(
                color: Color(0xff46F3F3),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Center(
                child: Text(
                  'Сан: $_counter',
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  _azaituu();
                },
                child: Container(
                  height: 44.0,
                  width: 69.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff005EA6),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // color: const Color(0xff005EA6),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _koboituu();
                },
                child: Container(
                  height: 44.0,
                  width: 69.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff005EA6),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // color: const Color(0xff005EA6),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),

              // const SizedBox(
              //   width: 50.0,
              // ),
              // const Text(
              //   'Data3',
              //   style: TextStyle(fontSize: 40.0),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
