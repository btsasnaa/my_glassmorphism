import 'package:flutter/material.dart';

class MyPositioned extends StatelessWidget {
  const MyPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Positioned"),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 40,
              top: 40,
              child: Image.asset(
                "assets/image/indian-food.jpeg",
                width: 250,
              ),
            ),
            Positioned(
              left: 80,
              top: 80,
              child: Image.asset(
                "assets/image/indian-food.jpeg",
                width: 250,
              ),
            ),
            Positioned(
              left: 20,
              top: 160,
              child: Image.asset(
                "assets/image/indian-food.jpeg",
                width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
