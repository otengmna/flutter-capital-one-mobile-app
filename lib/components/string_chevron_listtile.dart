import 'package:flutter/material.dart';
import 'package:cap_one_v2/constants.dart';

class StringChevronListTile extends StatelessWidget {
  final String title;

  StringChevronListTile({this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15.0,
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
      trailing: kChevronIcon,
    );
  }
}
