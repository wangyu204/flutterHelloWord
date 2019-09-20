import 'package:flutter/material.dart';

import 'draggable_demo.dart';
import 'models/index.dart';

//void main() => runApp(MyApp());

void main() {
  var u = User.fromJson({"name": "Jack", "age": 16, "+1": 20});
  print(u.loved); // 20
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '页面跳转返回参数',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面跳转返回参数"),
      ),
      body: Center(
        child: new RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToSecondPage(context);
      },
      child: Text('跳转到第二个页面'),
    );
  }

  _navigateToSecondPage(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => new SecondPage()),
    );
    Scaffold.of(context).showSnackBar(new SnackBar(content: Text("$result")));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("选择一条数据"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildPadding(context, 'hi google'),
            buildPadding(context, 'hi baidu'),
          ],
        ),
      ),
    );
  }

  Padding buildPadding(BuildContext context, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.pop(context, name);
        },
        child: Text(name),
      ),
    );
  }
}
