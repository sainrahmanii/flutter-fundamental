import 'package:flutter/material.dart';

void main() => runApp(AnonymousMethod());

class AnonymousMethod extends StatefulWidget {
  const AnonymousMethod({super.key});

  @override
  State<AnonymousMethod> createState() => _AnonymousMethodState();
}

class _AnonymousMethodState extends State<AnonymousMethod> {
  String message = 'Your Text';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              TextButton(
                  onPressed: () {
                    setState(() {
                      message = 'Button has been push';
                    });
                  },
                  child: Text('Push Me'))
            ],
          ),
        ),
      ),
    );
  }
}
