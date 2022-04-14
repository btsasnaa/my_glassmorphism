import 'package:flutter/material.dart';

class MyTips extends StatefulWidget {
  const MyTips({Key? key}) : super(key: key);

  @override
  State<MyTips> createState() => _MyTipsState();
}

class _MyTipsState extends State<MyTips> {
  List<String> _chip_labels = [
    "aaa@aaa",
    "bbb",
    "ccc.com",
    "dd",
    "daa",
    "w",
    "q"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My ClipPath"),
      ),
      body: Center(
        child: Wrap(
            children: (_chip_labels.length, (index) {
          return Chip(
            avatar: CircleAvatar(
              child: Text(_chip_labels[index].substring(0, 1)),
            ),
            label: Text(_chip_labels[index]),
            onDeleted: () {
              setState(() {
                _chip_labels.removeAt(index);
              });
            },
          );
        })),
      ),
    );
  }
}
