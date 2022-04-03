import 'package:flutter/material.dart';
import 'package:flutter_zenn_study/dummy.dart';
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

  // statefulWidgetを構築するとすぐに呼ばれる(Widgetツリーの生成のため)
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // 状態の変更をFrameworkに通知する
      print("call setState");
      _counter++;
    });
    nextpage();
  }

  void nextpage() async {
      {
        // ダミー画面へ遷移
        await Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
          return DummyPage();
      }));
      }
    }

  @override
  void initState() {
    // Widgetツリーの初期化を行う
    print("call initState");
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // stateオブジェクトの依存関係が変更されたときに呼ばれる
    print("call didChangeDependencies");
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    // Widgetで構成されるUIを構築する。
    print("call build");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              key: Key('counter'),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('increment'),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  @override
  void didUpdateWidget(oldWidget) {
    // Widgetの構成が変更される度に呼ばれる
    print("call didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }
  @override
  void deactivate() {
    // stateオブジェクトがツリーから削除される度に呼ばれる
    print("call deactivate");
     super.deactivate();
  }
  @override
  void dispose() {
    // オブジェクトがツリーから完全に削除されビルドされなくなったら呼ばれる
    print("call dispose");
    super.dispose();
  }
}
