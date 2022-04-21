import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            toolbarHeight: 55,
            title: const Center(
              child: Text("I Am Rich"),
            ),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: const Center(
            child: Image(
              image: AssetImage('../assets/as1.jpg'),
              height: 300,
              // width: 600,
            ),
          ),
        ),
      ),
    );
