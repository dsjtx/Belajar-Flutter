import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Media Query")),
      body: (MediaQuery.of(context).orientation == Orientation.portrait) ? 
      Column(
        children: generateContainer(),
      ) : 
      Row(
        children: generateContainer(),
      ),
      // body: Container(
      //   color: Colors.red,
      //   width: MediaQuery.of(context).size.width / 3,
      //   height: MediaQuery.of(context).size.height / 2,
      // ),
    );
  }

  // (syarat) ? kalau bener : kalau salah

  List<Widget> generateContainer() {
    return <Widget>[
        Container(color: Colors.red, width: 100, height: 100,),
        Container(color: Colors.green, width: 100, height: 100,),
        Container(color: Colors.blue, width: 100, height: 100,),
      ];
  }
}
