import 'package:flutter/material.dart';
import 'package:cap_one_v2/wholeScreen/bottom_navbar.dart';
import 'package:cap_one_v2/appbars/profile_appbar.dart';
import 'package:cap_one_v2/appbars/home_appbar.dart';
import 'package:cap_one_v2/bodies/profile_body.dart';
import 'package:cap_one_v2/bodies/home_body.dart';

class OldEntireScreen extends StatefulWidget {
  static const String id = 'entire_screen';

  @override
  _OldEntireScreenState createState() => _OldEntireScreenState();
}

class _OldEntireScreenState extends State<OldEntireScreen> {
  var widgetMap = {
    'appBar': [HomeAppBar(), ProfileAppBar()],
    'body': [HomeBody(), ProfileBody()]
  };

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetMap['appBar'].elementAt(selectedItem),
      body: widgetMap['body'].elementAt(selectedItem),
      bottomNavigationBar: BottomBar(
        selectedItem: selectedItem,
        onTap: (int index) {
          setState(() {
            selectedItem = index;
          });
        },
      ),
    );
  }
}
