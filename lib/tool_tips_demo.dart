import 'package:flutter/material.dart';

class ToolTipsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tool tips demo'),
      ),
      body: Center(
        child: Tooltip(
          message: '提示',
          child: Icon(Icons.all_inclusive),
        ),
      ),
    );
  }
}
