import 'package:flutter/material.dart';
import 'package:cap_one_v2/appbars/simple_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpScreen extends StatelessWidget {
  static const String id = 'help_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: 'Help'),
      body: ListView(
        children: [
          ListTile(
            leading: Text(
              'Contact Us',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: FaIcon(
              FontAwesomeIcons.phoneAlt,
              color: Color(0xff2b71aa),
            ),
            title: Text(
              'Call Capital One',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: FaIcon(
              FontAwesomeIcons.phoneAlt,
              color: Color(0xff2b71aa),
            ),
            title: Text(
              'Call Capital One Outside U.S.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
