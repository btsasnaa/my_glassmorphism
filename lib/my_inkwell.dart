import 'package:flutter/material.dart';

class MyInkwell extends StatefulWidget {
  const MyInkwell({Key? key}) : super(key: key);

  @override
  State<MyInkwell> createState() => _MyInkwellState();
}

class _MyInkwellState extends State<MyInkwell> {
  Color boxColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Inkwell"),
      ),
      body: Center(
        child: InkWell(
          onDoubleTap: () {
            setState(() {
              boxColor = Colors.red;
            });
          },
          onLongPress: () {
            setState(() {
              boxColor = Colors.yellow;
            });
          },
          onTap: () {
            setState(() {
              boxColor = Colors.blue;
            });
          },
          child: Ink(
            height: 200,
            width: 200,
            color: boxColor,
            child: Center(
              child: FlutterLogo(
                size: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
