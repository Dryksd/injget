import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_get_it_example/injection.dart';
import 'package:injectable_get_it_example/services/another_service.dart';


void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final anotherService = getIt<AnotherService>();
    anotherService.doAnotherThing();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Center(
        child: Text('Check console output'),
      ),
    );
  }
}

