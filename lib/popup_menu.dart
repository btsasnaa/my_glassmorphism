import 'package:flutter/material.dart';

class MyPopupMenu extends StatefulWidget {
  const MyPopupMenu({Key? key}) : super(key: key);

  @override
  State<MyPopupMenu> createState() => _MyPopupMenuState();
}

class _MyPopupMenuState extends State<MyPopupMenu> {
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';
  String thirdPage = 'Third Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text(firstPage),
                  value: firstPage,
                ),
                PopupMenuItem(
                  child: Text(secondPage),
                  value: secondPage,
                ),
                PopupMenuItem(
                  child: Text(thirdPage),
                  value: thirdPage,
                ),
              ],
              onSelected: (String newValue) {
                setState(() {
                  title = newValue;
                });
              },
            )
          ],
        ),
        body: Container());
  }
}
