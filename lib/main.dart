import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

Expanded buildkey(int soundnumber, Color color) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        final player = AudioCache();
        player.play('note$soundnumber.wav');
      },
      child: Text(''),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xlyphone'),
          backgroundColor: Colors.brown,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(1, Colors.red),
                buildkey(2, Colors.orange),
                buildkey(3, Colors.green),
                buildkey(4, Colors.teal),
                buildkey(5, Colors.blue),
                buildkey(6, Colors.purple),
                buildkey(7, Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
