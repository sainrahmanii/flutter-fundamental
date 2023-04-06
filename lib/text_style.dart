import 'package:flutter/material.dart';

void main() => runApp(TextStyleApp());

class TextStyleApp extends StatelessWidget {
  const TextStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Style'),
        ),
        body: Center(
          child: Text('My Text'),
        ),
      ),
    );
  }
}
