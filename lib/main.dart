import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:characters/characters.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hello_world/core/model/post_result.dart';
import 'package:stagehand/stagehand.dart';

import 'core/model/user_model.dart';

// void main() => runApp(MyApp());
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP Request / Koneksi ke API (Post Method)'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text((postResult != null)
            //     ? postResult.id +
            //         " | " +
            //         postResult.name +
            //         " | " +
            //         postResult.job +
            //         " | " +
            //         postResult.created
            //     : "Tidak ada data"),
            Text((user != null)
                ? user.id + " | " + user.name + " | " + user.email
                : "Tidak ada data"),
            RaisedButton(
              onPressed: () {
                // PostResult.connectToAPI("Badu", "Dokter").then((value) {
                //   postResult = value;
                //   setState(() {

                //   });
                // });

                User.connectToAPI("5").then((value) {
                  user = value;
                  setState(() {});
                });
              },
              // child: Text("POST"),
              child: Text("Get"),
            )
          ],
        )),
      ),
    );
  }
}
