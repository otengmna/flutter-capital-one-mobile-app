import 'package:flutter/material.dart';
import '../constants.dart';

class OneRowCardWithTextButton extends StatelessWidget {
  final Function onPressed;
  final String leading;
  final String trailingTextButton;

  OneRowCardWithTextButton(
      {this.onPressed, this.leading, this.trailingTextButton});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5.0,
      child: ListTile(
        leading: Text(
          leading,
          style: kTextBig,
        ),
        trailing: TextButton(
          onPressed: onPressed,
          child: Text(
            trailingTextButton,
            style: kTextBig,
          ),
        ),
      ),
    );
  }
}
