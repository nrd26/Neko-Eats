import 'package:app_prakyath/Components/bottomnavbar.dart';
import 'package:app_prakyath/Screens/cart/cart.dart';
import 'package:app_prakyath/Screens/homepage.dart';
import 'package:app_prakyath/Screens/profile/profile_page.dart';
import 'package:app_prakyath/Screens/search/search.dart';
import 'package:flutter/material.dart';

class Control extends StatefulWidget {
  const Control({Key? key}) : super(key: key);

  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Search(),
    Cart(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Neko Eats'),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onTabChanged:(index) {
            setState(() {
              _selectedIndex = index;
            });
          }
      ),
    );
  }
}
