import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Row dan Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Text 1 apaan nih?"),
            Text("Text 2 apaan nih?"),
            Text("Text 3 apaan nih?"),
            Row(
              children: <Widget>[
                Text("Text 4 apaan nih?"),
                Text("Text 5 apaan nih?"),
                Text("Text 6 apaan nih?")
              ],
            )
          ],
        ),
      ),
    );
  }
}
