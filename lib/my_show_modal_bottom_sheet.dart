import 'package:flutter/material.dart';

class MyShowModalBottomSheet extends StatefulWidget {
  const MyShowModalBottomSheet({Key? key}) : super(key: key);

  @override
  State<MyShowModalBottomSheet> createState() => _MyShowModalBottomSheetState();
}

class _MyShowModalBottomSheetState extends State<MyShowModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Show Modal Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Modal Bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 250,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text("Close"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
