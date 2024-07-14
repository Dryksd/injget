//#2
import 'package:injectable/injectable.dart';

@lazySingleton
class MyService {
  void doSomething() {
    print("Doing something!");
  }
}
