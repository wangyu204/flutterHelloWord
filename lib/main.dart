import 'package:flutter/material.dart';

import 'frosted_glass_demo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不规则',
      //自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: FrostedGlassDemo(),
      ),
    );
  }
}
