import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'http://blogimages.jspang.com/blogtouxiang1.jpg'),
          radius: 100,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('wangyu'),
        ),
      ],
    );

    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('垂直布局2'),
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
