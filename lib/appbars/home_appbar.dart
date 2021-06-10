import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff173c59),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(100.0);
}

// class Ex extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return PreferredSizeWidget.preferredSize;
//   }
// }
