import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// void main() => runApp(MyApp());
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.seek(Duration(seconds: 30));
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playing Music'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  playSound(
                      "https://files.freemusicarchive.org/storage-freemusicarchive-org/music/no_curator/Nutmeg/Camelot_Calling/Nutmeg_-_06_-_Notes_on_a_Fesival_Take_me_home_Emily_Im_Tired.mp3");
                },
                child: Text('Play'),
              ),
              RaisedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text('Pause'),
              ),
              RaisedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text('Stop'),
              ),
              RaisedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text('Resume'),
              ),
              Text(
                durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
