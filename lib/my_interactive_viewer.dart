import 'package:flutter/material.dart';

class MyInteractvieViewer extends StatefulWidget {
  const MyInteractvieViewer({Key? key}) : super(key: key);

  @override
  State<MyInteractvieViewer> createState() => _MyInteractvieViewerState();
}

class _MyInteractvieViewerState extends State<MyInteractvieViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Interactive Viewer"),
      ),
      body: Center(
        child: InteractiveViewer(
          maxScale: 5,
          child: Image.asset(
            "assets/image/indian-food.jpeg",
          ),
        ),
      ),
    );
  }
}
