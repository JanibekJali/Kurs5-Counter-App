import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  const EkinchiBet({Key key, this.kelgenSan}) : super(key: key);
  final int kelgenSan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
              'Сан: ${kelgenSan.toString()} ',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}
