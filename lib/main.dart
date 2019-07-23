import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        body: Center(
          child: Container(
            child: new Text(
              'hello1',
              style: TextStyle(fontSize: 40.0),
            ),
            alignment: Alignment.topLeft,
            width: 400.0,
            height: 400.0,
            padding: const EdgeInsets.fromLTRB(10.0, 100.0, 0, 0),
            margin: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.lightBlue, Colors.green, Colors.purple]),
              border: Border.all(width: 5.0, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
