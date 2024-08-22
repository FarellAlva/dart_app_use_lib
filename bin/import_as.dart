// ignore_for_file: unused_local_variable

import 'package:dart_library_test/hello.dart' as testing;

//alias (as) ini nge prevent bentrok jika import packages yg lebih dari 1
void main() {
  print(testing.sayHello('udin')); // Fungsi sayHello dari src/say_hello.dart
  var customer = testing.Customer();
  var product = testing.Product();
  var category = testing.Category();
}
