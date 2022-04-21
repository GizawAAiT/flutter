import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/ang.jpeg'),
                  ),
                  Text(
                    'Angelye you!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: ' SpecialElite-Regular',
                    ),
                  ),
                  Text(
                    'FLUTTER EVELOPER',
                    style: TextStyle(
                        fontFamily: 'SquarePeg-Regular',
                        color: Color.fromARGB(255, 167, 190, 165),
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
                width: 240,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 70, vertical: 2),
                child: ListTile(
                    leading: Icon(
                      Icons.phone_callback_outlined,
                      color: Colors.teal,
                    ),
                    title: Text('+44 123 2345 5534')),
              ),
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 70),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'angelsha @gmail.com',
                    style: TextStyle(
                        fontFamily: 'sansarif',
                        color: Colors.teal,
                        fontSize: 23),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
