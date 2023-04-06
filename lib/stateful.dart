// stateful = sebuah state yang dapat berubah (dinamic)
// stateless = state yang tidak dapat diubah (static)

import 'package:flutter/material.dart';

void main() => runApp(StatefulApp());

class StatefulApp extends StatefulWidget {
  const StatefulApp({super.key});

  @override
  State<StatefulApp> createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp> {
  int number = 0;
  void pushButton() {
    setState(() {
      number = number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Stateful Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                  onPressed: pushButton,
                  child: Text(
                    number.toString(),
                    style: TextStyle(fontSize: 10 + number.toDouble()),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
