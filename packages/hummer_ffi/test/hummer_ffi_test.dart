import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hummer_ffi/hummer_ffi.dart';

void main() {
  const MethodChannel channel = MethodChannel('hummer_ffi');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await HummerFfi.platformVersion, '42');
  });
}
