import 'package:flutter/material.dart';

class MyWrap extends StatefulWidget {
  const MyWrap({Key? key}) : super(key: key);

  @override
  State<MyWrap> createState() => _MyWrapState();
}

class _MyWrapState extends State<MyWrap> {
  @override
  Widget build(BuildContext context) {
    Widget _image = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        "assets/image/fruit01.jpeg",
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    );
    List<Widget> _list = [
      _image,
      _image,
      _image,
      _image,
      _image,
      _image,
      _image
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wrap"),
      ),
      body: Center(
        child: Wrap(
          children: _list,
        ),
      ),
    );
  }
}
