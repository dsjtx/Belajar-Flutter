import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Back to Main Page"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
      ),
    );
  }
}
