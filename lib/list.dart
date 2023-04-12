import 'package:flutter/material.dart';

void main() => runApp(MyList());

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<Widget> widgets = [];

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listview'),
        ),
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        'Data ke-' + counter.toString(),
                        style: TextStyle(fontSize: 20),
                      ));
                      counter++;
                    });
                  },
                  child: Text('Tambah Data')),
              TextButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                    });
                    counter--;
                  },
                  child: Text('Hapus Data'))
            ],
          ),
          Column(
            children: widgets,
          )
        ]),
      ),
    );
  }
}
