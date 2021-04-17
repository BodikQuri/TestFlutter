import 'package:flutter/material.dart';
import 'package:test_menu/WindowsClass/Calculator.dart';
import 'package:test_menu/accetsIcon/my_flutter_app_icons.dart';

class More extends StatelessWidget {
  double textSize = 30;
  double iconExSize = 40;
  double iconSize = 60;
  double ContainerButSize = 80;
  double marginBut = 20;
  double marginText = 20;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
            width: double.infinity,
            height: ContainerButSize,
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: CloseButton(
                      onPressed: () {},
                    )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 110),
                    child: Text(
                      'More',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: textSize,
                      ),
                    )),
              ],
            )),
        InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: ContainerButSize,
            margin: EdgeInsets.symmetric(horizontal: marginBut),
            child: Row(
              children: [
                Container(
                    child: Icon(
                  MyFlutterApp.cog_outline,
                  size: iconSize,
                )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: marginText),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: textSize,
                      ),
                    )),
              ],
            ),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2, color: Color(0xFF000000)))),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: ContainerButSize,
            margin: EdgeInsets.symmetric(horizontal: marginBut),
            child: Row(
              children: [
                Container(
                    child: Icon(
                  MyFlutterApp.mail,
                  size: iconSize,
                )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: marginText),
                    child: Text(
                      'Contact & Support',
                      style: TextStyle(
                        fontSize: textSize,
                      ),
                    )),
              ],
            ),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2, color: Color(0xFF000000)))),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: ContainerButSize,
            margin: EdgeInsets.symmetric(horizontal: marginBut),
            child: Row(
              children: [
                Container(
                    child: Icon(
                  MyFlutterApp.chat_empty,
                  size: iconSize,
                )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: marginText),
                    child: Text(
                      'Feedback!',
                      style: TextStyle(
                        fontSize: textSize,
                      ),
                    )),
              ],
            ),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2, color: Color(0xFF000000)))),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: ContainerButSize,
            margin: EdgeInsets.symmetric(horizontal: marginBut),
            child: Row(
              children: [
                Container(
                    child: Icon(
                  MyFlutterApp.logout,
                  size: iconSize,
                )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: marginText),
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        fontSize: textSize,
                      ),
                    )),
              ],
            ),
            decoration: const BoxDecoration(),
          ),
        ),
      ],
    );
  }
}
