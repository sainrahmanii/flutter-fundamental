import 'package:flutter/material.dart';

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
          title: const Text('Hello Flutter Dev'),
        ),
        body: Center(
            child: Container(
                color: Colors.cyanAccent,
                width: 150,
                height: 50,
                child: const Text(
                  'Hello World',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ))),
      ),
    );
  }
}
