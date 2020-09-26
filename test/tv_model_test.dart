import 'dart:io';
import 'package:test/test.dart';
import 'package:tv_remote_controller/tv_model.dart';

void main() {
  TVModel tv;
  setUp(() async {
    final File file = File('./base_url.txt');
    await file.writeAsString("http://example.com");
    print(file);
    tv = TVModel();
  });

  tearDown(() async {
    final File file = File('./base_url.txt');
    file.deleteSync();
    await file.writeAsString("");
  });
  test('first test', () {
    expect(1, 1);
    print(tv);
  });
}
