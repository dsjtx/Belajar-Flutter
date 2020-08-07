import 'dart:ui';
import 'dart:convert';
import 'package:http/http.dart' as http;
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
  bool isSwitch = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedSwitcher'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(
              flex: 1,
            ),
            Text("Switch ME!!"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                (isSwitch)
                    ? Text(
                        "OFF",
                        style: TextStyle(color: Colors.grey[300]),
                      )
                    : Text(
                        "OFF",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                Switch(
                    activeColor: Colors.green,
                    inactiveTrackColor: Colors.redAccent,
                    value: isSwitch,
                    onChanged: (newValue) {
                      isSwitch = newValue;
                      setState(() {
                        if (isSwitch) {
                          myWidget = Text(
                            "Switch: ON",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          );
                        } else {
                          myWidget = Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                          );
                        }
                      });
                    }),
                (!isSwitch)
                    ? Text(
                        "ON",
                        style: TextStyle(color: Colors.grey[300]),
                      )
                    : Text(
                        "ON",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            // AnimatedSwitcher(
            //   child: myWidget,
            //   duration: Duration(seconds: 1),
            //   transitionBuilder: (child, animation) {
            //     ScaleTransition(
            //       scale: animation,
            //       child: child,
            //     );
            //   },
            // ),
          ],
        )),
      ),
    );
  }
}
