import 'dart:math' as math;

class NullSample {
  mehod1() {
    int x = 10; // nullの可能性なし
    int? y = getNullable(); // nullの可能性あり

    // x = y; // Non-Nullable に Nullable を代入するとコンパイルエラー
    // y = x; // Nullable に Non=Nullable を代入するのはOK
    if (y != null) {
      x = y; // null チェックの後なのでコンパイルOK
    }
    print("method1 - x: $x, y: $y");
  }

  method2() {
    int x = 20;
    int? y = getNullable();

    x = y!; // yをNullableにキャストして代入する
    print("method2 - x: $x, y: $y");
  }

  // random でnull か 1 を返す
  getNullable() {
    var rand = math.Random();
    if (rand.nextInt(2) == 0) {
      return null;
    } else {
      return 1;
    }
  }
}
