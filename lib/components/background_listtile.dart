import 'package:flutter/material.dart';

class BackgroundListTile extends StatelessWidget {
  final String title;

  BackgroundListTile({this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15.0,
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
    );
  }
}
