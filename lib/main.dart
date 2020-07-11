import 'package:flutter/material.dart';
import 'package:landmark_quiz_app/play_game.dart';
import 'package:landmark_quiz_app/tile.dart';

import 'level.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SelectLevel(),
    );
  }
}

class SelectLevel extends StatefulWidget {
  @override
  _SelectLevelState createState() => _SelectLevelState();
}

class _SelectLevelState extends State<SelectLevel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 30,),
            PlayGame(),
            SizedBox(height: 30,),

          ],
        )
      ),
    );
  }
}


