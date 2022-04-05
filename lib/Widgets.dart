import 'package:flutter/material.dart';
import 'package:flutter_zenn_study/MyInheritedWidget.dart';

class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyInheritedWidget _myInheritedWidget = MyInheritedWidget.of(context);
    String message = _myInheritedWidget.message;
    return Text(message);
  }
}
