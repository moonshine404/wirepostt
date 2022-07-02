import 'package:flutter/material.dart';
import '/CRUD/CRUD.dart';
import 'homepage.dart';
import '/pages/profile_page.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// TODO: Add state variables and functions
// 7
  int _selectedIndex = 0;
// 8
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    const Card1(),
// TODO: Replace with Card2
    const Card1(),
// TODO: Replace with Card3
    const CRUD(),

    ProfilePage()
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
        title: (Row(
          children: [
            Image.asset('assets/logofix.png'),
            const Text(' '),
            const Text('Wirepost', style: TextStyle(color: Colors.green))
          ],
        )),
      ),
// TODO: Show selected tab
      body: pages[_selectedIndex],
// TODO: Add bottom navigation bar
// 4
      bottomNavigationBar: BottomNavigationBar(
// 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
// TODO: Set selected tab bar
// 10
        currentIndex: _selectedIndex,
// 11
        onTap: _onItemTapped,
// 6
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brush_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
