import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final double balance;
  final String accountType;
  final String accountLastFour;

  AccountCard({this.balance, this.accountType, this.accountLastFour});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      color: Color(0xff214f6f),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$accountType ...$accountLastFour',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '\$$balance',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 55.0,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'PRINCIPLE BALANCE',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
