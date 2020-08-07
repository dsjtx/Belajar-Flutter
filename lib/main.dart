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
  String text = "No Data Found";
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
                : text),
            RaisedButton(
              onPressed: () {
                // PostResult.connectToAPI("Badu", "Dokter").then((value) {
                //   postResult = value;
                //   setState(() {

                //   });
                // });

                // User.connectToAPI("5").then((value) {
                //   user = value;
                //   setState(() {});
                // });

                User.getUsers("2").then((value) {
                  text = "";
                  for (var i = 0; i < value.length; i++) {
                    text = text + "[ " + value[i].name + " ]";
                  }
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

class User {
  String id;
  String name;
  String email;

  User({this.id, this.name, this.email});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name'],
      email: object['email'],
    );
  }

  // static Future<User> connectToAPI(String id) async {
  //   String apiURL = "https://reqres.in/api/users/" + id;

  //   var apiResult = await http.get(apiURL);
  //   var jsonObject = json.decode(apiResult.body);
  //   var userData = (jsonObject as Map<String, dynamic>)['data'];

  //   return User.createUser(userData);
  // }

  static Future<List<User>> getUsers(String page) async {
    String apiURL = "https://reqres.in/api/users?page=" + page;

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<User> users = [];
    for (var i = 0; i < listUser.length; i++) {
      users.add(User.createUser(listUser[i]));
    }
    return users;
  }
}

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        created: object['createdAt']);
  }

  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";

    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}