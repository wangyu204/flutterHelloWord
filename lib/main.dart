import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'http://blogimages.jspang.com/blogtouxiang1.jpg'),
          radius: 100,
        ),
        new Positioned(
          child: new Text('wangyu.com'),
          top: 10.0,
          left: 60.0,
        ),
        new Positioned(
          child: new Text('技术联盟'),
          bottom: 10.0,
          right: 10.0,
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
