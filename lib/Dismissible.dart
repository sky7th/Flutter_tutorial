import 'package:flutter/material.dart';

class MyDismissible extends StatefulWidget {
  @override
  _MyDismissibleState createState() => _MyDismissibleState();
}

class _MyDismissibleState extends State<MyDismissible> {
  final items = List.generate(10, (i) => "리스트 ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(items[index]),
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
          },
          child: ListTile(title: Text(items[index])),
          background: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Text(
                "삭제",
                style: TextStyle(fontSize: 50),
              )),
        );
      },
    ),
    );
  }
}
