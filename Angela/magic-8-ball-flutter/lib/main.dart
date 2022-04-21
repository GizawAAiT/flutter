import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Ball(),
      ),
    );

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(child: Text("Ask Me Anything")),
        backgroundColor: Color.fromARGB(255, 14, 3, 119),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Expanded(
            child: Container(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    num = Random().nextInt(4) + 1;
                  });
                },
                child: Image.asset('images/ball$num.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
