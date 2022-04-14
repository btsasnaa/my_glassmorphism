import 'package:flutter/material.dart';

class MyAnimatedBuilder extends StatefulWidget {
  const MyAnimatedBuilder({Key? key}) : super(key: key);

  @override
  State<MyAnimatedBuilder> createState() => _MyAnimatedBuilderState();
}

class _MyAnimatedBuilderState extends State<MyAnimatedBuilder>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
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
        title: Text("My Animated Builder"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(100),
            ),
            alignment: Alignment.center,
            width: 200,
            height: 200,
            child: Text(
              "animated builder",
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
      ),
    );
  }
}
