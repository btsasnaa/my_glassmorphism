import 'package:flutter/material.dart';

class MyPageRoute extends StatefulWidget {
  const MyPageRoute({Key? key}) : super(key: key);

  @override
  State<MyPageRoute> createState() => _MyPageRouteState();
}

class _MyPageRouteState extends State<MyPageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My page route"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PageRoute(
                key: widget.key,
              ),
            ),
          );
        },
        child: ClipRRect(
            child: Hero(
          tag: "tag",
          child: Image.asset(
            "assets/image/indian-food.jpeg",
            width: 200,
          ),
        )),
      ),
    );
  }
}

class PageRoute extends StatelessWidget {
  const PageRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        transitionOnUserGestures: true,
        tag: "tag",
        child: Image.asset(
          "assets/image/indian-food.jpeg",
        ),
      ),
    );
  }
}
