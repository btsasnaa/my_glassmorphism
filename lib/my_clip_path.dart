import 'package:flutter/material.dart';
import 'package:my_glassmorphism/clip_shadow_path.dart';

class MyClipPath extends StatefulWidget {
  const MyClipPath({Key? key}) : super(key: key);

  @override
  State<MyClipPath> createState() => _MyClipPathState();
}

class _MyClipPathState extends State<MyClipPath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My ClipPath"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.orange.shade100,
                  Colors.red.shade500,
                ],
              ),
            ),
            child: const Center(child: Text('Clip Path')),
            height: double.maxFinite,
          ),
          ClipShadowPath(
            shadow: const BoxShadow(
              color: Colors.black26,
              offset: Offset(4, 4),
              blurRadius: 4,
              spreadRadius: 8,
            ),
            clipper: CustomClipPath0(),
            child: Container(
              color: Colors.yellow.shade400,
              child: const Center(),
              height: double.maxFinite,
            ),
          ),
          ClipShadowPath(
            shadow: const BoxShadow(
              color: Colors.black45,
              offset: Offset(4, 4),
              blurRadius: 4,
              spreadRadius: 8,
            ),
            clipper: CustomClipPath1(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.orange.shade100,
                    Colors.red.shade900,
                  ],
                ),
              ),
              child: const Center(),
              height: double.maxFinite,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath0 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.moveTo(0, 100); // 1. Point
    path.lineTo(0, h); // 2. Point
    // path.lineTo(w, h); // 4. Point
    path.quadraticBezierTo(
      w * 0.5, // 3. Point
      h - 100, // 3. Point
      w, // 4. Point
      h, // 4. Point
    ); // 4. Point
    path.lineTo(w, 0); // 5. Point
    path.close();

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.6705000);
    path0.quadraticBezierTo(size.width * 0.1908800, size.height * 0.7500200,
        size.width * 0.3307400, size.height * 0.7165000);
    path0.cubicTo(
        size.width * 0.4713600,
        size.height * 0.6741200,
        size.width * 0.6313600,
        size.height * 0.4162800,
        size.width * 0.7841800,
        size.height * 0.3838600);
    path0.quadraticBezierTo(size.width * 0.8865400, size.height * 0.3698200,
        size.width * 0.9995800, size.height * 0.4173200);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path1 = Path();
    path1.moveTo(0, 0);
    path1.lineTo(0, size.height * 0.3963400);
    path1.quadraticBezierTo(size.width * 0.1425400, size.height * 0.4913200,
        size.width * 0.3443800, size.height * 0.4852200);
    path1.cubicTo(
        size.width * 0.4978000,
        size.height * 0.4730200,
        size.width * 0.6515400,
        size.height * 0.3116200,
        size.width * 0.7525400,
        size.height * 0.2893000);
    path1.quadraticBezierTo(size.width * 0.8333200, size.height * 0.2707800,
        size.width, size.height * 0.3419800);
    path1.lineTo(size.width, 0);
    path1.lineTo(0, 0);
    path1.close();

    return path1;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
