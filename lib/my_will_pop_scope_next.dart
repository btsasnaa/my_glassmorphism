import 'package:flutter/material.dart';

class MyWillPopScopeNext extends StatelessWidget {
  const MyWillPopScopeNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: Text("My WillPopScope Next"),
        ),
        body: Center(),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
