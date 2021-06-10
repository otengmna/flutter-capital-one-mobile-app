import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cap_one_v2/constants.dart';
import 'package:cap_one_v2/components/profile_listTile.dart';
import 'package:cap_one_v2/screens/personal_info_screen.dart';
import 'package:cap_one_v2/screens/alert_screen.dart';
import 'package:cap_one_v2/screens/help_screen.dart';
import 'package:cap_one_v2/screens/security_screen.dart';
import 'package:cap_one_v2/screens/account_feature_settings.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
      child: Column(
        // color: Colors.yellow,
        children: [
          ProfileListTile(
            leading: FontAwesomeIcons.userAlt,
            tileTitle: 'Personal Info',
            onTap: () {
              Navigator.pushNamed(context, PersonalInfoScreen.id);
            },
          ),
          kProfileDivider,
          ProfileListTile(
            leading: FontAwesomeIcons.lock,
            tileTitle: 'Security',
            onTap: () {
              Navigator.pushNamed(context, SecurityScreen.id);
            },
          ),
          kProfileDivider,
          ProfileListTile(
            leading: FontAwesomeIcons.wrench,
            tileTitle: 'Account & Feature Settings',
            onTap: () {
              Navigator.pushNamed(context, AccountFeatureSettings.id);
            },
          ),
          kProfileDivider,
          ProfileListTile(
            leading: FontAwesomeIcons.solidQuestionCircle,
            tileTitle: 'Help',
            onTap: () {
              Navigator.pushNamed(context, HelpScreen.id);
            },
          ),
          kProfileDivider,
          ProfileListTile(
            leading: FontAwesomeIcons.solidBell,
            tileTitle: 'Alerts & Notifications',
            onTap: () {
              Navigator.pushNamed(context, AlertNotificationScreen.id);
            },
          ),
          kProfileDivider,
          ProfileListTile(
            leading: FontAwesomeIcons.bullhorn,
            tileTitle: 'Feedback',
            onTap: () {},
          ),
          kProfileDivider,
          ProfileListTile(
            leading: FontAwesomeIcons.wallet,
            tileTitle: 'Digital Wallet Manager',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
