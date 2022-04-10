import 'package:flutter/material.dart';
import 'package:flutter_zenn_study/MyData.dart';
import 'package:flutter_zenn_study/Slider.dart';
import 'package:flutter_zenn_study/Widgets.dart';
import 'package:flutter_zenn_study/MyInheritedWidget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print("count: " + _counter.toString());
  }

  // Scaffoldの下のCenter部分を先に静的に作っておき、作り返さないように制御
  // 深い階層の伝播は証明できたためにシンプルにCenter->WidgetAに変更
  // final Widget _widget = Center(child: WidgetA());

  // Providerパッケージが提供するConsumerを使うとWidgetAを使わずに(より簡単)に↑と同じことができる
  final Widget _widget = Center(
    child: Consumer<int>(
      builder: (context, value, _) => Text(
        value.toString(),
        style: TextStyle(fontSize: 100),
      ),
    )
  );
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => MyData(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title!),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MyData>(
              // context.readを使ってアクセス
              builder: (context, schedule, _) => Text(
                context.select(
                    (MyData mydata) => mydata.value.toStringAsFixed(2)
                ),
                style: TextStyle(fontSize: 100)
              ),
            ),
            MySlider()
          ],
        )
      ),
    );
  }
}
