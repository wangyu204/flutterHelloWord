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
        body: GridView.count(
          padding: const EdgeInsets.all(20.0),
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          children: <Widget>[
            const Text('hello wangyu'),
            const Text('hello wangyu1'),
            const Text('hello wangyu2'),
            const Text('hello wangyu3'),
            const Text('hello wangyu4'),
            const Text('hello wangyu5'),
            const Text('hello wangyu6'),
            const Text('hello wangyu7'),
            const Text('hello wangyu8'),
            const Text('hello wangyu9'),
          ],
        ),
      ),
    );
  }
}
