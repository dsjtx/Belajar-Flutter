import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Image Widget")),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                    image: AssetImage("assets/Garuda_Pancasila.png"),
                        fit: BoxFit.contain,
                        repeat: ImageRepeat.repeat,
                        ),
              ),
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
                        fit: BoxFit.cover,
                        repeat: ImageRepeat.repeat,
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
