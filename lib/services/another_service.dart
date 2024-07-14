//#3
import 'package:injectable/injectable.dart';

import 'my_service.dart';

@injectable
class AnotherService {
  final MyService myService;

  AnotherService(this.myService);

  void doAnotherThing() {
    myService.doSomething();
    print("Doing another thing!");
  }
}
