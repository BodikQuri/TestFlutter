import 'package:flutter/material.dart';
import 'package:test_menu/WindowsClass/Tips.dart';
import 'package:test_menu/WindowsClass/History.dart';
import 'package:test_menu/WindowsClass/Count.dart';
import 'package:test_menu/WindowsClass/Calculator.dart';
import 'package:test_menu/WindowsClass/More.dart';
import 'package:test_menu/accetsIcon/my_flutter_app_icons.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  static const double sizeIconMenu = 35;

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Tips(),
    History(),
    Count(),
    Calculator(),
    More(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('StitchCounter'), 

            Icon(Icons.android), 
            Text('Bot')],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        //fixedColor: Color(0x1F1F1F1F),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.help_circled,
              size: sizeIconMenu,            
            ),
            label: 'Tips',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.clock,
              size: sizeIconMenu,
              ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.camera,
              size: sizeIconMenu*1.5,
            ),
            label: 'Count',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.calc,
              size: sizeIconMenu,
              ),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.server,
              size: sizeIconMenu,
              ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],

        onTap: _onItemTap,
      ),
    );
  }
}
