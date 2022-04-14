import 'package:flutter/material.dart';

class MyChoiceChip extends StatefulWidget {
  const MyChoiceChip({Key? key}) : super(key: key);

  @override
  State<MyChoiceChip> createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<MyChoiceChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Choice chip"),
      ),
      body: Center(
        child: ChoiceChip(
          avatar: Image.asset("assets/image/fruit01.jpeg"),
          label: Text("Choice chip"),
          selected: _isSelected,
          onSelected: (newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
        ),
      ),
    );
  }
}
