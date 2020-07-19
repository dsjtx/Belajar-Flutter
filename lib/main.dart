import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() => runApp(MyApp());
void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(MyApp());
  });
}

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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SecondPage();
            },
          ));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://esports.id/img/article/16120190729070632.jpg")),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Latihan Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MainPage();
              },
            ));
          },
          child: Hero(
            tag: 'pp',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 200,
                height: 200,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://esports.id/img/article/16120190729070632.jpg")),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
