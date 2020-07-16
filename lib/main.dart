import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Flexible Layout"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                      child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.blue[100],
                  )),
                  Flexible(
                      child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.blue[200],
                  )),
                  Flexible(
                      child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.blue[300],
                  )),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.amber,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}
