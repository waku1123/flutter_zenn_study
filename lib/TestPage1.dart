import 'package:flutter/material.dart';
import 'package:flutter_zenn_study/TestPage2.dart';
class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("TestPage1");
    return Scaffold(
      appBar: AppBar(
        title: Text('Test1'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => {
            Navigator.of(context).pushNamed("/test2")
            // 以下の書き方でも↑と同じ
            // Navigator.pushNamed(context, "/TestPage2")

            // 以下の書き方でも↑と同じ
            // MaterialPageRoute(builder: (context) {
            //   return TestPage2();
            // },)
          },
          child: Text('進む', style: TextStyle(fontSize: 80)),
        )
      )
    );
  }
}
