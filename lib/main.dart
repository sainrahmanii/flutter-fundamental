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
          body: Row(
            children: [
              Container(
                color: Colors.indigo,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.indigo,
                width: 100,
                height: 100,
              ),
              Text(
                'Testing Fonts',
                style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 3),
              )
            ],
          )),
    );
  }
}
