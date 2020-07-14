import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void tambahTombol() {
    setState(() {
      number = number + 1;
    });
  }

  void resetTombol() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stateless & Stateful Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 15 + number.toDouble()),
              ),
              RaisedButton(
                  child: Text("Tambah Bilangan"), onPressed: tambahTombol),
              RaisedButton(
                  child: Text("Ulang Bilangan"), onPressed: resetTombol)
            ],
          ),
        ),
      ),
    );
  }
}
