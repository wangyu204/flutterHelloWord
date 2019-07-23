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
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text('alarm'),
            ),
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text('alarm'),
            ),
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text('alarm'),
            ),
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text('alarm'),
            ),
            new Image.network(
                'http://image.317hu.com/cc55b4f6-23f3-4a4d-9eee-7208893b4685')
          ],
        ),
      ),
    );
  }
}
