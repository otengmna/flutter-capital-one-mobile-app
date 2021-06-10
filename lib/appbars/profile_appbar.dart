import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff173c59),
      leadingWidth: 100.0,
      leading: TextButton(
        onPressed: () {},
        child: Text(
          'Sign Out',
          textAlign: TextAlign.start,
          style: TextStyle(color: Color(0xfffefefe), fontSize: 15.0),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(150.0);
}
