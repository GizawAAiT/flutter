import 'package:flutter/material.dart';

class stackDemo extends StatefulWidget {
  const stackDemo({Key? key}) : super(key: key);

  @override
  State<stackDemo> createState() => _stackDemoState();
}

class _stackDemoState extends State<stackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("telegram!"),
      ),
      drawer: Drawer(
        child: Container(height: 120),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "phone"),
        ],
      ),
      // floatingActionButton:const FloatingActionButton(onPressed: () {},),
    );
  }
}
