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
