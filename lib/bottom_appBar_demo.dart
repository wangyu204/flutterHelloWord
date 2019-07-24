import 'package:flutter/material.dart';

import 'each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView = List();
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _eachView..add(EachView('Home'))..add(EachView('Wangyu'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return EachView('New page');
          }));
        },
        tooltip: 'wangyuTip',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
