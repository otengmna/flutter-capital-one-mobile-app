import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatelessWidget {
  final int selectedItem;
  final Function onTap;

  BottomBar({this.selectedItem, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xfffefefe),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.solidUserCircle),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Color(0xff3473aa),
      currentIndex: selectedItem,
      onTap: onTap,
    );
  }
}
