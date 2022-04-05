import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final String message;
  // コンストラクタでメッセージと子Widgetを取る
  MyInheritedWidget({required this.message, required Widget child}): super(child: child);
  
  static MyInheritedWidget of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>() as MyInheritedWidget;

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) => oldWidget.message != message;
}
