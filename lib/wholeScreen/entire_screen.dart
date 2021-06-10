import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cap_one_v2/screens/alert_screen.dart';
import 'package:cap_one_v2/screens/help_screen.dart';
import 'package:cap_one_v2/screens/profile_screen.dart';
import 'package:cap_one_v2/screens/home_screen.dart';
import 'package:cap_one_v2/screens/personal_info_screen.dart';
import 'package:cap_one_v2/screens/security_screen.dart';
import 'package:cap_one_v2/screens/account_feature_settings.dart';

class EntireScreen extends StatefulWidget {
  static const String id = 'persistent_screen';

  final BuildContext menuScreenContext;
  EntireScreen({Key key, this.menuScreenContext}) : super(key: key);

  @override
  _EntireScreenState createState() => _EntireScreenState();
}

class _EntireScreenState extends State<EntireScreen> {
  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: FaIcon(FontAwesomeIcons.home),
        title: 'Home',
        activeColorPrimary: Color(0xff3473aa),
        inactiveColorPrimary: CupertinoColors.inactiveGray,
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(FontAwesomeIcons.userCircle),
        title: 'Profile',
        activeColorPrimary: Color(0xff3473aa),
        inactiveColorPrimary: CupertinoColors.inactiveGray,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: ProfileScreen.id,
          routes: {
            AlertNotificationScreen.id: (context) => AlertNotificationScreen(),
            HelpScreen.id: (context) => HelpScreen(),
            SecurityScreen.id: (context) => SecurityScreen(),
            PersonalInfoScreen.id: (context) => PersonalInfoScreen(),
            AccountFeatureSettings.id: (context) => AccountFeatureSettings(),
          },
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
