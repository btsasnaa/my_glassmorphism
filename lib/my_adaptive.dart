import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAdaptive extends StatelessWidget {
  const MyAdaptive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Slider.adaptive(
            onChanged: (double newValue) {},
            value: 1,
          ),
          SwitchListTile.adaptive(
            value: true,
            onChanged: (bool neValue) {},
            title: Text('Switch List Tile'),
          ),
          Switch.adaptive(
            value: true,
            onChanged: (bool neValue) {},
          ),
          Icon(Icons.adaptive.share),
          const CircularProgressIndicator.adaptive()
        ],
      ),
    );
  }
}
