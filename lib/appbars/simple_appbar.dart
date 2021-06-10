import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  SimpleAppBar({this.title});

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
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(50.0);
}
