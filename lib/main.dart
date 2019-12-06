import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: const Text(
              'Ask Me Anything',
            ),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball(),
        backgroundColor: Colors.blue.shade500,
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  Random random = new Random();
  int ballNumber = 1;

  void randomizeBall() {
    setState(() {
      ballNumber = random.nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            randomizeBall();
            print(ballNumber);
          },
          child: (Image.asset(
            'images/ball$ballNumber.png',
          )),
        ),
      ),
    );
  }
}
