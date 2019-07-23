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
          child: Text(
            'hello2321erqreqwrwerqerqwrerqrqrqrqrdsfafafafadfasf23rsrer121',
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
