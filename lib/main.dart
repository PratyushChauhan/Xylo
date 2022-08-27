import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              // player.setSource(AssetSource(
              //     'assets/note1.waw'));
              player.play(
                  AssetSource("note1.wav")); // will immediately start playing
            },
            child: Center(child: Text("Clicc")),
          ),
        ),
      ),
    );
  }
}
