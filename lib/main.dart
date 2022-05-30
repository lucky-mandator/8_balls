import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('8 Ask'),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.lightBlue,
        body: BallPage());
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var BallCount = 1;

  void changeBall() {
    setState(() {
      BallCount = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
            onPressed: () {
              changeBall();
            },
            child: Image.asset('images/ball$BallCount.png')),
      ),
    );
  }
}
