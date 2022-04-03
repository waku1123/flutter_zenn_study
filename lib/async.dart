import 'dart:async';
import 'dart:io';

class Async {
  void asynctest1() {
    print('method begin');
    print(DateTime.now().toString());
    print("data1 start");
    print(syncFunc("data1", 3));
    print("data2 start");
    print(syncFunc("data2", 2));
    print("data3 start");
    print(syncFunc("data3", 1));
  }

  void asynctest2() {
    print("method begin");
    print(DateTime.now().toString());
    print("data1 start");
    print(asyncFunc("data1", 3));
    print("data2 start");
    print(asyncFunc("data2", 2));
    print("data3 start");
    print(asyncFunc("data3", 1));
  }

  void asynctest3() {
    print("method begin");
    print(DateTime.now().toString());
    print("data1 start");
    // 非同期処理1
    Future<String> result1 = asyncFunc("data1", 3);
    result1.then((result) {
      // callback
      print(result);
    });

    // 非同期処理2
    print("data2 start");
    Future<String> result2 = asyncFunc("data2", 2);
    result2.then((result) {
      // callback
      print(result);
    });

    // 非同期処理3
    print("data3 start");
    Future<String> result3 = asyncFunc("data3", 1);
    result3.then((result) {
      // callback
      print(result);
    });

    // 非同期処理の待ち合わせ
    // Future.wait([asyncFunc("data1", 3), asyncFunc("data2", 2), asyncFunc("data3", 1)]).then((result) {
    //   print(result);
    // });
  }

  void asynctest4() async {
    print("method begin");
    print(DateTime.now().toString());
    print("data1 start");
    print(await asyncFunc("data1", 3)); // asyncFuncが終わるのを待ってしまうので、同期的に実行される
    print("data2 start");
    print(await asyncFunc("data2", 2));
    print("data3 start");
    print(await asyncFunc("data3", 1));
  }
  String syncFunc(String name, int time) {
    sleep(Duration(seconds: time));
    return name + ":" + DateTime.now().toString();
  }

  Future<String> asyncFunc(String name, int time) async {
    return Future.delayed(Duration(seconds: time), () {
      return name + ":" + DateTime.now().toString();
    });
  }
}
