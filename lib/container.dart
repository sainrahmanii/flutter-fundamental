import 'package:flutter/material.dart';

void main() => runApp(MyContainer());

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body: Container(
          color: Colors.grey,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Container(
            color: Colors.blue,
            margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
            padding: EdgeInsets.only(bottom: 20, top: 30),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.blue,
                  Colors.green,
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
