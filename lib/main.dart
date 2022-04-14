import 'package:flutter/material.dart';
import 'package:my_glassmorphism/fitted_box.dart';
import 'package:my_glassmorphism/my_adaptive.dart';
import 'package:my_glassmorphism/my_alert_dialog.dart';
import 'package:my_glassmorphism/my_animated_builder.dart';
import 'package:my_glassmorphism/my_animated_cross_fade.dart';
import 'package:my_glassmorphism/my_animated_opacity.dart';
import 'package:my_glassmorphism/my_checkbox_list_tile.dart';
import 'package:my_glassmorphism/my_choice_chip.dart';
import 'package:my_glassmorphism/my_clip_path.dart';
import 'package:my_glassmorphism/my_coffee_animation.dart';
import 'package:my_glassmorphism/my_expanded.dart';
import 'package:my_glassmorphism/my_expansion_tile.dart';
import 'package:my_glassmorphism/my_flexible.dart';
import 'package:my_glassmorphism/my_future_builder.dart';
import 'package:my_glassmorphism/my_inkwell.dart';
import 'package:my_glassmorphism/my_interactive_viewer.dart';
import 'package:my_glassmorphism/my_interactive_viewer2.dart';
import 'package:my_glassmorphism/my_lottie.dart';
import 'package:my_glassmorphism/my_positioned.dart';
import 'package:my_glassmorphism/my_range_slider.dart';
import 'package:my_glassmorphism/my_show_modal_bottom_sheet.dart';
import 'package:my_glassmorphism/my_stack.dart';
import 'package:my_glassmorphism/my_tips.dart';
import 'package:my_glassmorphism/my_visibility.dart';
import 'package:my_glassmorphism/my_will_pop_scope.dart';
import 'package:my_glassmorphism/my_wrap.dart';
import 'package:my_glassmorphism/page_route_hero.dart';
import 'package:my_glassmorphism/popup_menu.dart';
import 'package:my_glassmorphism/show_search.dart';
import 'package:my_glassmorphism/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const Welcome(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: ShowSearch(),
      // home: MyPageRoute(),
      // home: MyChoiceChip(),
      // home: MyExpansionTile(),
      // home: MyPopupMenu(),
      // home: MyVisibility(),
      // home: MyShowModalBottomSheet(),
      // home: MyAnimatedCrossFade(),
      // home: MyExpanded(),
      // home: MyFlexible(),
      // home: MyWillPopScope(),
      // home: MyFutureBuilder(),
      // home: MyStack(),
      // home: MyPositioned(),
      // home: MyAlertDialog(),
      // home: MyInkwell(),
      // home: MyInteractvieViewer(),
      // home: MyInteractvieViewer2(),
      // home: MyCheckboxListTile(),
      // home: MyClipPath(),
      // home: MyTips(),
      // home: MyAnimatedBuilder(),
      // home: MyLottie(),
      // home: MyAnimatedOpacity(),
      home: MyCoffeeAnimation(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: MyAdaptive());
  }
}
