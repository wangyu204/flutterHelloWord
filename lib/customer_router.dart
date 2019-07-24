import 'package:flutter/material.dart';

class CustomerRouter extends PageRouteBuilder {
  final Widget widget;

  CustomerRouter(this.widget)
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return widget;
            },
            transitionDuration: Duration(seconds: 2),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              //旋转+缩放效果
              return RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                    parent: animation1, curve: Curves.fastOutSlowIn)),
                child: ScaleTransition(
                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                      parent: animation1, curve: Curves.fastOutSlowIn)),
                  child: child,
                ),
              );
            });
}
