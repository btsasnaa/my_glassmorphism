import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Future Builder"),
      ),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/image/fruit01.jpeg",
              ),
            ),
            Center(
              child: Image.asset(
                "assets/image/indian-food.jpeg",
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
