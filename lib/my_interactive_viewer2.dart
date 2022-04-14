import 'package:flutter/material.dart';

class MyInteractvieViewer2 extends StatefulWidget {
  const MyInteractvieViewer2({Key? key}) : super(key: key);

  @override
  State<MyInteractvieViewer2> createState() => _MyInteractvieViewerState2();
}

class _MyInteractvieViewerState2 extends State<MyInteractvieViewer2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(double.infinity),
        maxScale: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Inside"),
          ),
        ),
      ),
    );
  }
}
