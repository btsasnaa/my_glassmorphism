import 'package:flutter/material.dart';

class MyFutureBuilder extends StatefulWidget {
  const MyFutureBuilder({Key? key}) : super(key: key);

  @override
  State<MyFutureBuilder> createState() => _MyFutureBuilderState();
}

Future<String> getData() async {
  await Future.delayed(const Duration(seconds: 2));
  // throw 'An error occured!';
  return 'It works!';
}

class _MyFutureBuilderState extends State<MyFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Future Builder"),
      ),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(snapshot.data.toString()),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text("Refresh"),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
