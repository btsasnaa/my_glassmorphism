import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCoffeeAnimation extends StatefulWidget {
  const MyCoffeeAnimation({Key? key}) : super(key: key);

  @override
  State<MyCoffeeAnimation> createState() => _MyCoffeeAnimationState();
}

class _MyCoffeeAnimationState extends State<MyCoffeeAnimation>
    with TickerProviderStateMixin {
  late AnimationController _coffeeController;
  bool isGreenCoffee = false;
  bool isTextReady = false;

  @override
  void initState() {
    super.initState();
    _coffeeController = AnimationController(
      vsync: this,
    );
    _coffeeController.addListener(() {
      if (_coffeeController.value > 0.7) {
        _coffeeController.stop();
        isGreenCoffee = true;
        setState(() {});
        Future.delayed(const Duration(seconds: 1), () {
          isTextReady = true;
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    _coffeeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xfff8dc9c),
      body: Stack(
        children: [
          Visibility(visible: isGreenCoffee, child: const BottomPart()),
          AnimatedContainer(
            height: isGreenCoffee ? (height / 1.45) : height,
            duration: const Duration(seconds: 1),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    offset: Offset(3, 3),
                    blurRadius: 10,
                    spreadRadius: 2,
                    color: Colors.black26)
              ],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isGreenCoffee ? 25.0 : 0.0),
                  bottomRight: Radius.circular(isGreenCoffee ? 25.0 : 0.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnimatedCrossFade(
                  firstChild: Center(
                      child: Lottie.asset("assets/json/coffee_green.json",
                          height: height / 1.9)),
                  secondChild: Lottie.asset("assets/json/coffee_brown.json",
                      controller: _coffeeController, onLoaded: (composition) {
                    _coffeeController.duration = composition.duration;
                    _coffeeController.forward();
                  }),
                  crossFadeState: isGreenCoffee
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(seconds: 2),
                ),
                Center(
                  child: AnimatedOpacity(
                    opacity: isTextReady ? 1 : 0,
                    duration: const Duration(seconds: 1),
                    child: Text(
                      "Coffee Cups",
                      style: GoogleFonts.lobster(
                        textStyle: const TextStyle(
                          fontSize: 50,
                          color: Color(0xff674335),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Find The Best Coffee for You',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 30.0),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
                child: const Icon(
                  Icons.chevron_right,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
