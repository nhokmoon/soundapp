import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final AudioCache audioCache = AudioCache();
  List<double> left = [20, 40, 60, 80, 100, 120, 140];
  List<double> right = [20, 40, 60, 80, 100, 120, 140];
  List<String> name = ['DO', 'RE', 'MI', 'FA', 'SOL', 'LA', 'SI'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soung App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sound App Ver 0.1'),
          backgroundColor: Colors.teal[300],
        ),
        body: Center(
          child: Column(
            children: [
              for (int i = 0; i < 7; i++)
                Expanded(
                    child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(left[i], 0, right[i], 10),
                    child: ElevatedButton(
                      onPressed: btnTap(0),
                      child: Text(name[i]),
                      style: TextButton.styleFrom(
                          minimumSize: Size(800, 400),
                          backgroundColor: Colors.red),
                    ),
                  ),
                )),
            ],
          ),
        ),
      ),
    );
  }

  void btnTap(int i) {
    audioCache.play('audios/note' + name[i] + '.wav');
  }
}
