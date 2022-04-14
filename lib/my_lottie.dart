import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyLottie extends StatefulWidget {
  const MyLottie({Key? key}) : super(key: key);

  @override
  State<MyLottie> createState() => _MyLottieState();
}

class _MyLottieState extends State<MyLottie>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    _controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
        _controller.reset();
      }
    });
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
        title: Text("My Lottie Animation"),
      ),
      body: Column(
        children: [
          Lottie.asset("assets/json/delivery.json"),
          SizedBox(height: 32),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30),
                textStyle: TextStyle(fontSize: 24)),
            icon: Icon(
              Icons.delivery_dining,
              size: 48,
            ),
            label: Text("Order Pizza"),
            onPressed: showDoneDialog,
          ),
        ],
      ),
    );
  }

  void showDoneDialog() => showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset(
                  "assets/json/done.json",
                  repeat: false,
                  controller: _controller,
                  onLoaded: (composition) {
                    // _controller.duration = composition.duration;
                    _controller.forward();
                  },
                ),
                Text(
                  "Enjoy your order",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16)
              ],
            ),
          ));
}
