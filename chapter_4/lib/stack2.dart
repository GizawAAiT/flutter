import 'package:flutter/material.dart';

class stack2 extends StatelessWidget {
  const stack2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/st22.png'),
            fit: BoxFit.fill,
          ),
        ),
        width: 400,
        height: 550,
        child: Center(
          child: Stack(children: <Widget>[
            Expanded(
              child: Positioned(
                right: -70,
                top: 5,
                child: Container(
                  width: 550,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: const [
                            Text('Carrier'),
                            Icon(Icons.wifi),
                          ],
                        ),
                      ),
                      const Text("7:56 AM"),
                      const RotatedBox(
                        quarterTurns: 1,
                        child: Icon(Icons.battery_full_outlined),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 40,
                right: 0,
                child: Row(
                  children: const [
                    Icon(Icons.edit),
                    Icon(Icons.three_k),
                  ],
                )),
            const Positioned(
                bottom: 100,
                right: 60,
                child: Text(
                  "Ali Connors",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ))
          ]),
        ),
      ),
    );
  }
}
