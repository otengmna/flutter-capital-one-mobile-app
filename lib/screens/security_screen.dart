import 'package:cap_one_v2/constants.dart';
import 'package:flutter/material.dart';
import 'package:cap_one_v2/appbars/simple_appbar.dart';
import 'package:cap_one_v2/components/background_listtile.dart';
import 'package:cap_one_v2/components/two_line_chevron_listtile.dart';
import 'package:cap_one_v2/components/string_chevron_listtile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecurityScreen extends StatelessWidget {
  static const String id = 'security_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: 'Security'),
      body: ListView(
        children: [
          BackgroundListTile(title: 'Sign In'),
          Card(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            elevation: 0.5,
            child: Column(
              children: [
                TwoLineChevronListTile(
                  top: 'Username',
                  bottom: 'user*********',
                ),
                kProfileInfoDivider,
                TwoLineChevronListTile(
                  top: 'Password',
                  bottom: '**********',
                ),
                kProfileInfoDivider,
                TwoLineChevronListTile(
                  top: 'Sign in Option',
                  bottom: 'Face ID',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'In-Person ID Verification',
                ),
              ],
            ),
          ),
          BackgroundListTile(title: 'Additional Security'),
          Card(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            elevation: 0.5,
            child: TwoLineChevronListTile(
              top: 'Verification Method',
              bottom: 'Mobile App Verification',
            ),
          ),
          BackgroundListTile(title: 'Linked Apps'),
          Card(
            child: ListTile(
              title: Text(
                'You have not provided any external apps access to your account.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ),
          BackgroundListTile(title: 'Legal'),
          Card(
            child: Column(
              children: [
                StringChevronListTile(title: 'Legal & Privacy Documentation'),
                kProfileInfoDivider,
                ListTile(
                  tileColor: Colors.white,
                  leading: Text(
                    'Cyber Incident',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                  trailing: FaIcon(
                    FontAwesomeIcons.externalLinkAlt,
                    size: 18.0,
                    color: Color(0xff6b757f),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
