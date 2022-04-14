import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<MyAnimatedOpacity> createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  double _currentOpacity = 1;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Animated Opacity"),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedOpacity(
                opacity: _currentOpacity,
                child: AnimatedBuilder(
                  animation: _controller,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.lightBlue.shade600,
                          Colors.white,
                        ],
                      ),
                      // color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 0.1,
                        color: Colors.lightBlue.shade600,
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    child: Text(
                      "Opacity",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  builder: (BuildContext context, Widget? child) {
                    return Transform.rotate(
                      angle: _controller.value * 2.0 * 3.14,
                      child: child,
                    );
                  },
                ),
                duration: const Duration(seconds: 1)),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentOpacity = 0;
                });
              },
              child: Container(
                margin: EdgeInsets.only(top: 4, left: 4),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/indian-food.jpeg"),
                      fit: BoxFit.cover),
                  // color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(46),
                ),
                alignment: Alignment.center,
                width: 92,
                height: 92,
                child: Center(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
