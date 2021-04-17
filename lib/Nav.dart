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
  static const double TextSize = 30;
  static const Color colorIcon = Colors.green;

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
        backgroundColor: Colors.green,
        title: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('StitchCounter', style: TextStyle(fontSize: TextSize)),
              Icon(
                Icons.android,
                size: TextSize,
              ),
              Text('Bot', style: TextStyle(fontSize: TextSize))
            ],
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
              color: colorIcon,
              size: sizeIconMenu,
            ),
            label: 'Tips',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.clock,
              color: colorIcon,
              size: sizeIconMenu,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.camera,
              color: colorIcon,
              size: sizeIconMenu * 1.5,
            ),
            label: 'Count',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.calc,
              color: colorIcon,
              size: sizeIconMenu,
            ),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.server,
              color: colorIcon,
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
