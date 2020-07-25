import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() => runApp(MyApp());
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Gradient Opacity'),
          ),
          body: Center(
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)
                    .createShader(
                        Rect.fromLTRB(0, 0, bounds.width, bounds.height));
              },
              blendMode: BlendMode.dstOut,
              child: Image(
                width: 300,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
              ),
            ),
          )),
    );
  }
}
