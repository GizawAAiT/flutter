import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';
import 'stack1.dart';
import 'stack2.dart';

// 1
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// 7
  int _selectedIndex = 0;
// 8
  static List<Widget> pages = <Widget>[
    const card1(),
    const Card2(),
    const Card3(),
    const stack1(),
    const stack2(),
    Container(color: const Color.fromARGB(255, 25, 128, 42))
  ];
// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Text(
                "Fooderlich!", // 2
                style: Theme.of(context).textTheme.headline6,
              ),
              const Icon(Icons.food_bank_outlined)
            ],
          ),
        ),
      ),
      body: pages[_selectedIndex],
// 4
      bottomNavigationBar: BottomNavigationBar(
// 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
// 10
        currentIndex: _selectedIndex,
// 11
        onTap: _onItemTapped, // 6
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'stack1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'stack2',
          )
        ],
      ),
    );
  }
}
