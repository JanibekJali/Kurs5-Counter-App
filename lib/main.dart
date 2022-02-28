import 'package:flutter/material.dart';

void main() {
  runApp(const Kyrgyzstan());
}

class Kyrgyzstan extends StatelessWidget {
  const Kyrgyzstan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Ozbekstan(title: 'Flutter Demo Home Page'),
    );
  }
}

class Ozbekstan extends StatefulWidget {
  const Ozbekstan({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<Ozbekstan> createState() => _OzbekstanState();
}

class _OzbekstanState extends State<Ozbekstan> {
  int _counter = 0;
  // Bul metod, funcsiya
  void funkciya() {}

  Adam adam = Adam(aty: 'Aibek', jash: 12);
  Okuuchu okuuchu =
      Okuuchu(alganBaasy: 5, kiigenFormasynynTusu: Colors.black38);
  @override
  void initState() {
    print('Adamdyn aty: ${adam.aty}');
    print('Adamdyn jashy: ${adam.jash}');
    adam = Adam(aty: 'Sagyn', jash: 35);
    print('Adamdyn aty: ${adam.aty}');
    print('Adamdyn jashy: ${adam.jash}');
    print('Okuuchunun jonundo : ${okuuchu.alganBaasy}');
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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

class Adam {
  String aty;
  int jash;
  Adam({this.aty, this.jash});
}

class Okuuchu extends Adam {
  int alganBaasy;
  Color kiigenFormasynynTusu;
  Okuuchu({this.alganBaasy, this.kiigenFormasynynTusu});
}
