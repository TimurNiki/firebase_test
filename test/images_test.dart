import 'dart:io';
import 'package:firebase_test_app/core/resources/resources.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  test('images assets test', () {
    expect(File(Images.randomLogo).existsSync(), isTrue);
  });
}
