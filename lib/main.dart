import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final AudioCache audioCache = AudioCache();
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
              Expanded(
                  child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: ElevatedButton(
                    child: Text('DO',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        )),
                    onPressed: btn1,
                    style: TextButton.styleFrom(
                        minimumSize: Size(800, 400),
                        backgroundColor: Colors.red),
                  ),
                ),
              )),
              Expanded(
                  child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                  child: ElevatedButton(
                    child: Text('RE',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        )),
                    onPressed: btn2,
                    style: TextButton.styleFrom(
                        minimumSize: Size(800, 400),
                        backgroundColor: Colors.yellow),
                  ),
                ),
              )),
              Expanded(
                  child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Container(
                  margin: EdgeInsets.fromLTRB(60, 0, 60, 10),
                  child: ElevatedButton(
                    child: Text('MI',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        )),
                    onPressed: btn3,
                    style: TextButton.styleFrom(
                        minimumSize: Size(800, 400),
                        backgroundColor: Colors.green),
                  ),
                ),
              )),
              Expanded(
                  child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Container(
                  margin: EdgeInsets.fromLTRB(80, 0, 80, 10),
                  child: ElevatedButton(
                    child: Text('FA',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        )),
                    onPressed: btn4,
                    style: TextButton.styleFrom(
                        minimumSize: Size(800, 400),
                        backgroundColor: Colors.pink),
                  ),
                ),
              )),
              Expanded(
                  child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Container(
                  margin: EdgeInsets.fromLTRB(100, 0, 100, 10),
                  child: ElevatedButton(
                    child: Text('SOL',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        )),
                    onPressed: btn5,
                    style: TextButton.styleFrom(
                        minimumSize: Size(800, 400),
                        backgroundColor: Colors.purple),
                  ),
                ),
              )),
              Expanded(
                  child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Container(
                  margin: EdgeInsets.fromLTRB(120, 0, 120, 10),
                  child: ElevatedButton(
                    child: Text('LA',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        )),
                    onPressed: btn6,
                    style: TextButton.styleFrom(
                        minimumSize: Size(800, 400),
                        backgroundColor: Colors.orange),
                  ),
                ),
              )),
              Expanded(
                  child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Container(
                  margin: EdgeInsets.fromLTRB(140, 0, 140, 10),
                  child: ElevatedButton(
                    child: Text('SI',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        )),
                    onPressed: btn7,
                    style: TextButton.styleFrom(
                        minimumSize: Size(800, 400),
                        backgroundColor: Colors.blue),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  void btn1() {
    audioCache.play('audios/noteDO.wav');
  }

  void btn2() {
    audioCache.play('audios/noteRE.wav');
  }

  void btn3() {
    audioCache.play('audios/noteMI.wav');
  }

  void btn4() {
    audioCache.play('audios/noteFA.wav');
  }

  void btn5() {
    audioCache.play('audios/noteSOL.wav');
  }

  void btn6() {
    audioCache.play('audios/noteLA.wav');
  }

  void btn7() {
    audioCache.play('audios/noteSI.wav');
  }
}
