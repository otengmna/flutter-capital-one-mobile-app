import 'package:flutter/material.dart';
import 'package:cap_one_v2/appbars/profile_appbar.dart';
import 'package:cap_one_v2/bodies/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  static const String id = 'profile_home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(),
      body: ProfileBody(),
    );
  }
}
