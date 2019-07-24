import 'package:flutter/material.dart';

import 'pages/home_screen.dart';
import 'pages/emal_screen.dart';
import 'pages/airplay_screen.dart';
import 'pages/pages_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> pageList = List();

  @override
  void initState() {
    pageList
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(AirplayScreen())
      ..add(PagesScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'home',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'email',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Airplay',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _bottomNavigationColor,
            ),
            title: Text(
              '设置',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
        ],
        currentIndex: _currentIndex, //高亮
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
