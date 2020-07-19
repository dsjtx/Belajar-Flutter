import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() => runApp(MyApp());
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.blue, 
            Colors.blueAccent[400]],
        ),
        // color: Colors.red
      ),
      // indicatorColor: Colors.black,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "Comments",
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: "Computer",
        )
      ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Latihan Ubah Tampilan TabBar"),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(
                    // color: Colors.amber,
                    child: myTabBar),
              )),
          body: TabBarView(children: <Widget>[
            Center(
              child: Text("Tab 1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
          ]),
        ),
      ),
    );
  }
}
