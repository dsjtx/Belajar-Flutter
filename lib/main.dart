import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

// void main() => runApp(MyApp());
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: QrImage(
            version: 6,
            // backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(20),
            size: 300,
            data: "https://www.instagram.com/daniel_smnjuntak/"),
        ),
      ),
    );
  }
}
