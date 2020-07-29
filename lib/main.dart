import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int sound){
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey( {Color color, int soundNum}){
    return Expanded(
      child: FlatButton(
        onPressed:(){
          playSound(soundNum);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.orange, soundNum: 2),
              buildKey(color: Colors.yellow, soundNum: 3),
              buildKey(color: Colors.green, soundNum: 4),
              buildKey(color: Colors.lightBlueAccent, soundNum: 5),
              buildKey(color: Colors.blue[700], soundNum: 6),
              buildKey(color: Colors.deepPurple, soundNum: 7),
          ],
          ),
        ),
      ),
    );
  }
}
