import 'package:flutter/material.dart';
import 'package:move_to_back/move_to_back.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FilledButton(
            onPressed: () {
              MoveToBack.execute();
            },
            child: Text('move task to back'),
          ),
        ),
      ),
    );
  }
}
