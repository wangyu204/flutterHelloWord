import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('title'),
        ),
        body: new Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: new Text('red'),
            ),
            new RaisedButton(
              onPressed: () {},
              color: Colors.yellowAccent,
              child: new Text('yellow'),
            ),
            new RaisedButton(
              onPressed: () {},
              color: Colors.lightBlue,
              child: new Text('lightBlue'),
            ),
          ],
        ),
      ),
    );
  }
}
