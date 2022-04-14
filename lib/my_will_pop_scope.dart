import 'package:flutter/material.dart';
import 'package:my_glassmorphism/my_will_pop_scope_next.dart';

class MyWillPopScope extends StatefulWidget {
  const MyWillPopScope({Key? key}) : super(key: key);

  @override
  State<MyWillPopScope> createState() => _MyWillPopScopeState();
}

class _MyWillPopScopeState extends State<MyWillPopScope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My WillPopScope"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Next Page"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MyWillPopScopeNext(
                  key: widget.key,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
