import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class PersonalInfoAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  PersonalInfoAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Color(0xfffefefe),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: TextStyle(color: Color(0xfffefefe), fontSize: 20.0),
      ),
      backgroundColor: Color(0xff173c59),
      flexibleSpace: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Color(0xfffefefe),
          height: 200.0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(250.0);
}
