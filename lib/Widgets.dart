// import 'package:flutter/material.dart';
// import 'package:flutter_zenn_study/MyInheritedWidget.dart';
// import 'package:provider/provider.dart';
//
// class WidgetA extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int count;
//     try {
//       //MyInheritedWidget _myInheritedWidget = MyInheritedWidget.of(context);
//       //count = _myInheritedWidget.count;
//       count = Provider.of<int>(context);
//     } catch (e) {
//       count = 0;
//     }
//     return Text("$count", style: TextStyle(fontSize: 100));
//   }
// }
