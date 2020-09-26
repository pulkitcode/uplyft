import 'package:flutter/material.dart';
import 'env.dart';
import 'demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static String _pkg = "gooey_edge";
  static String get pkg => Env.getPackage(_pkg);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat',
      theme: (ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFFb5b3fd),
      )),
      home: GooeyEdgeDemo(title: 'Uplyft'),
    );
  }
}
