import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'wangyu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('welcome wangyu'),
        ),
        body: Center(
          child: Text('hello world'),
        ),
      ),
    );
  }
  
}

//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Welcome to Flutter'),
//        ),
//        body: Center(
//          child: Text('Hello World'),
//        ),
//      ),
//    );
//  }
//}

