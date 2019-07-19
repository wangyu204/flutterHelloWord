import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        title: 'Image demo',
        home: new ImageDemo(),
      )
  );
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      //添加网络图片
      child: new Image.network(
        //图片url
        'https://pic4.zhimg.com/v2-3be05963f5f3753a8cb75b6692154d4a_1200x500.jpg',
        //填充模式
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
