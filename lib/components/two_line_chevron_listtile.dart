import 'package:flutter/material.dart';
import 'package:cap_one_v2/constants.dart';

class TwoLineChevronListTile extends StatelessWidget {
  final String top;
  final String bottom;

  TwoLineChevronListTile({this.top, this.bottom});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        top,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 13.0,
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
      subtitle: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          bottom,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15.0,
            textBaseline: TextBaseline.alphabetic,
          ),
        ),
      ),
      trailing: kChevronIcon,
      // isThreeLine: true,
    );
  }
}
