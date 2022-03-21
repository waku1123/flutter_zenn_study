import 'package:flutter_test/flutter_test.dart';

void main() {
  test("myTest01", () {
    var ans = 10;
    expect(ans, 10);
  });

  test("myTest02", () {
    var param1= 10;
    var param2= 20;
    var ans = param1 + param2;
    expect(ans, 30);
  });
}
