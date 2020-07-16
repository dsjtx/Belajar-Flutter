import 'package:flutter/material.dart';
import 'package:hello_world/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainPage"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go to Second Page"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}
