import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直布局'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('I am top'),
              Expanded(
                child: Text('I am bodydfasfasfasfasfasfsa'),
              ),
              Text('I am bottom'),
            ],
          ),
        ),
      ),
    );
  }
}
