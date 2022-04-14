import 'package:flutter/material.dart';

class MyVisibility extends StatefulWidget {
  const MyVisibility({Key? key}) : super(key: key);

  @override
  State<MyVisibility> createState() => _MyVisibilityState();
}

class _MyVisibilityState extends State<MyVisibility> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My Visibility"), actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
            child: Text(
              'Switch',
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
        body: SizedBox(
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/image/fruit01.jpeg",
                  height: 100,
                ),
                Visibility(
                  visible: _isVisible,
                  child: Image.asset(
                    "assets/image/indian-food.jpeg",
                  ),
                ),
                Image.asset(
                  "assets/image/fruit01.jpeg",
                  height: 100,
                ),
              ],
            ),
          ),
        ));
  }
}
