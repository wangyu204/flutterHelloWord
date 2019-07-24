import 'package:flutter/material.dart';

import 'customer_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'FirstPage',
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(CustomerRouter(SecondPage()));
          },
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'SecondPage',
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 0.0,
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
