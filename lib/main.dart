import 'package:flutter/material.dart';
import 'package:cap_one_v2/wholeScreen/entire_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xfff2f2f2),
      ),
      initialRoute: EntireScreen.id,
      routes: {
        EntireScreen.id: (context) => EntireScreen(),
      },
    );
  }
}
