import 'package:flutter/material.dart';
import 'package:cap_one_v2/appbars/personal_info_appbar.dart';
import 'package:cap_one_v2/constants.dart';
import 'package:cap_one_v2/components/background_listtile.dart';

class PersonalInfoScreen extends StatefulWidget {
  static const String id = 'personalInfoTab';

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PersonalInfoAppBar(
        title: 'Personal Info',
      ),
      body: ListView(
        children: [
          BackgroundListTile(title: 'Personal Email'),
          Card(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            elevation: 0.5,
            child: Column(
              children: [
                ListTile(
                  // contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  tileColor: Colors.white,
                  leading: Text(
                    'username@gmail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                  trailing: kChevronIcon,
                ),
                kProfileInfoDivider,
                ListTile(
                  tileColor: Colors.white,
                  leading: TextButton(
                    child: Text(
                      'Add an Email',
                      style: TextStyle(
                        color: Color(0xff2b71aa),
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  trailing: kChevronIcon,
                ),
              ],
            ),
          ),
          BackgroundListTile(title: 'Phone Number'),
          Card(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            elevation: 0.5,
            child: Column(
              children: [
                ListTile(
                  tileColor: Colors.white,
                  leading: Text(
                    '(123) 456-7890',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                  trailing: kChevronIcon,
                ),
                kProfileInfoDivider,
                ListTile(
                  tileColor: Colors.white,
                  leading: TextButton(
                    child: Text(
                      'Add Phone Number',
                      style: TextStyle(
                        color: Color(0xff2b71aa),
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  trailing: kChevronIcon,
                ),
              ],
            ),
          ),
          BackgroundListTile(title: 'Employment Information'),
          ListTile(
            tileColor: Colors.white,
            leading: Text(
              'Income and Employment',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
            trailing: kChevronIcon,
          ),
        ],
      ),
    );
  }
}
