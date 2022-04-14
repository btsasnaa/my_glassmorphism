import 'package:flutter/material.dart';

class MyExpanded extends StatefulWidget {
  const MyExpanded({Key? key}) : super(key: key);

  @override
  State<MyExpanded> createState() => _MyExpandedState();
}

class _MyExpandedState extends State<MyExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Expanded"),
      ),
      body: Center(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 200,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              height: 200,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
              height: 200,
            ),
          ),
        ],
      )),
    );
  }
}
