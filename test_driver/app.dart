// integration_testファイル名は {アプリファイル}_test.dartとする必要がある。
// 別の名前やパスに配置すると file not foundが発生するので注意すること。

import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_zenn_study/main.dart' as app;

void main() {
  // 別プロセスのアプリケーションを起動するために拡張を有効にする
  enableFlutterDriverExtension();
  // アプリの起動
  app.main();
}
