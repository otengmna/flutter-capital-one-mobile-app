import 'package:flutter/material.dart';
import 'package:cap_one_v2/constants.dart';
import 'package:cap_one_v2/appbars/simple_appbar.dart';
import 'package:cap_one_v2/components/string_chevron_listtile.dart';
import 'package:cap_one_v2/components/background_listtile.dart';

class AccountFeatureSettings extends StatelessWidget {
  static const String id = 'account_feature_settings_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: 'Account & Feature Settings'),
      body: ListView(
        children: [
          BackgroundListTile(title: 'General Account Settings'),
          Card(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            elevation: 0.50,
            child: Column(
              children: [
                StringChevronListTile(
                  title: 'Account Display Options',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'Language Settings',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'Paperless Settings',
                ),
              ],
            ),
          ),
          BackgroundListTile(title: 'Credit Card Account Settings'),
          Card(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            elevation: 0.50,
            child: Column(
              children: [
                StringChevronListTile(
                  title: 'Activate a Card',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'Add a Credit Card Payment',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'Request Credit Line Increase',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'Credit Card Settings',
                ),
              ],
            ),
          ),
          BackgroundListTile(title: 'Feature Settings'),
          Card(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
            elevation: 0.50,
            child: Column(
              children: [
                StringChevronListTile(
                  title: 'Quick Balance Widget',
                ),
                kProfileInfoDivider,
                StringChevronListTile(
                  title: 'Zelle®',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
