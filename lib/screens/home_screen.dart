import 'package:flutter/material.dart';
import 'package:cap_one_v2/appbars/home_appbar.dart';
import 'package:cap_one_v2/bodies/home_body.dart';
import 'package:cap_one_v2/constants.dart';
import 'package:cap_one_v2/components/account_card.dart';
import 'package:cap_one_v2/components/savings_tile.dart';
import 'package:cap_one_v2/components/card_one_line_textbutton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  String newYearCar =
      'New year, new car. Pre-qualify online with Auto Navigator and see your real monthly payment on millions of cars';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: HomeAppBar(),
      // body: HomeBody(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Bank Company'),
              background: Container(
                height: 180.0,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  AccountCard(
                    balance: 3678.88,
                    accountType: 'Checking',
                    accountLastFour: '1234',
                  ),
                  AccountCard(
                    balance: 5678.88,
                    accountType: 'Savings',
                    accountLastFour: '4567',
                  ),
                  AccountCard(
                    balance: 35678.88,
                    accountType: 'Auto Loan',
                    accountLastFour: '7890',
                  ),
                  OneRowCardWithTextButton(
                    leading: 'Explore Other Products',
                    trailingTextButton: 'Browse',
                    onPressed: () {},
                  ),
                  Card(
                    elevation: 5.0,
                    child: InkWell(
                      child: ListTile(
                        leading: Text(
                          'Branch/ATM',
                          style: kTextBigBold,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 00.0, 20.0, 0.0),
                          leading: FaIcon(FontAwesomeIcons.car),
                          title: Text(
                            'Pre-qualify Online in Minutes',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        kHomeDivider,
                        ListTile(
                          title: Text(newYearCar),
                        ),
                        ListTile(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          title: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ),
                        kHomeDivider,
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Let\'s Go',
                            style: kTextBig,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 5.0,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Text(
                            'Earn Credits for Shopping',
                            style: kTextBigBold,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(width: 20.0),
                            SavingsTile(
                              logo: 'macy\'s',
                              percentOff: 6,
                              onPressed: () {},
                            ),
                            SizedBox(width: 10.0),
                            SavingsTile(
                              logo: 'j. Crew',
                              percentOff: 5,
                              onPressed: () {},
                            ),
                            SizedBox(width: 10.0),
                            SavingsTile(
                              logo: 'Chewey.com',
                              percentOff: 15,
                              onPressed: () {},
                            ),
                            SizedBox(width: 20.0),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        kHomeDivider,
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All Offers',
                            style: kTextBig,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OneRowCardWithTextButton(
                    leading: 'Your Virtual Cards',
                    trailingTextButton: 'View All',
                    onPressed: () {},
                  ),
                ],
              ),
            ]),
          ),
          // HomeBody(),
        ],
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: HomeAppBar(),
//       body: HomeBody(),
//     );
//   }
// }
