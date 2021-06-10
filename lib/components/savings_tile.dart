import 'package:flutter/material.dart';

class SavingsTile extends StatelessWidget {
  //logo, %, url
  // Widget logo;
  final String logo;
  final int percentOff;
  final Function onPressed;

  SavingsTile({this.logo, this.percentOff, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black38,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text(logo),
            ),
            Text('$percentOff%'),
            Text('back'),
            TextButton(
              onPressed: onPressed,
              child: Text(
                'Get Savings',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
