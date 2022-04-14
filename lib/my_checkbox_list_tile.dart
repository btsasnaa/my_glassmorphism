import 'package:flutter/material.dart';

class MyCheckboxListTile extends StatefulWidget {
  const MyCheckboxListTile({Key? key}) : super(key: key);

  @override
  State<MyCheckboxListTile> createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Checkbox List Tile"),
      ),
      body: Center(
        child: CheckboxListTile(
          title: Text("Checkbox List Tile"),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          controlAffinity: ListTileControlAffinity.leading,
          tileColor: Colors.black12,
          tristate: true,
          subtitle: Text("Subtitle text"),
        ),
      ),
    );
  }
}
