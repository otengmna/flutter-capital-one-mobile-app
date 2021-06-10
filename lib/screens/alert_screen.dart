import 'package:flutter/material.dart';
import 'package:cap_one_v2/constants.dart';
import 'package:cap_one_v2/appbars/simple_appbar.dart';
import 'package:cap_one_v2/components/string_chevron_listtile.dart';
import 'package:cap_one_v2/components/background_listtile.dart';

class AlertNotificationScreen extends StatelessWidget {
  static const String id = 'alert_body';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: 'Alerts & Notifications'),
      body: ListView(
        children: [
          BackgroundListTile(title: 'Account Alerts'),
          Card(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            elevation: 0.5,
            child: Column(
              children: [
                StringChevronListTile(
                  title: 'Alerts for Checking ...1234',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'Alerts for Saving ...1234',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'Alerts for Card ...1234',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'Alerts for Auto Loan...1234',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
