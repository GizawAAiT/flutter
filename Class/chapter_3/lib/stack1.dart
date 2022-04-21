import 'package:flutter/material.dart';

class stack1 extends StatelessWidget {
  const stack1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 320,
          height: 370,
        ),
        decoration: const BoxDecoration(
          color: Color.fromARGB(17, 0, 0, 0),
        ),
        child: Center(
          child: Stack(
            children: const <Widget>[
              Positioned(
                child: CircleAvatar(
                  radius: 140,
                  backgroundImage: AssetImage('assets/st12.jpg'),
                ),
              ),
              Positioned(
                  bottom: 52,
                  right: 44,
                  child: DecoratedBox(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(190, 17, 2, 2)),
                    child: Text(
                      "Mia B.",
                      style: TextStyle(
                          fontFamily: 'sansarif',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
