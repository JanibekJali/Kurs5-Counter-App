import 'package:flutter/material.dart';
import 'package:tirkeme1/tapshyrma.dart';

class Tirkeme extends StatelessWidget {
  const Tirkeme({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Tapshyrma(),
    );
  }
}
