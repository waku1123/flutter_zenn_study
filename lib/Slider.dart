// Riverpodを利用すると、コンパクトになるためmain.dartに統合

// import 'package:flutter/material.dart';
// import 'package:flutter_zenn_study/MyData.dart';
// import 'package:provider/provider.dart';
//
// class MySlider extends StatefulWidget {
//   @override
//   createState() => _MySliderState();
// }
//
// class _MySliderState extends State<MySlider> {
//   @override
//   Widget build(BuildContext context) {
//     final mydata = Provider.of<MyData>(context);
//     return Slider(
//       value: mydata.value,
//       onChanged: (value) => mydata.value = value
//     );
//   }
// }
