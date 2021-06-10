import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileListTile extends StatelessWidget {
  final IconData leading;
  final String tileTitle;
  final Function onTap;

  ProfileListTile({this.leading, this.tileTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FaIcon(
        leading,
        size: 18.0,
        color: Color(0xff6b757f),
      ),
      title: Text(
        tileTitle,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 15.0,
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
      trailing: FaIcon(
        FontAwesomeIcons.chevronRight,
        size: 18.0,
        color: Color(0xff6b757f),
      ),
      onTap: onTap,
    );
  }
}
