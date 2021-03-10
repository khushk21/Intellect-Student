import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/New%20Assignments/new_assignment_screen.dart';
import 'package:flutter_auth/Screens/Past%20Assignments/past_assignment_screen.dart';
import 'package:flutter_auth/Screens/Reset/reset_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Assignments for the day!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "New Assignments",
              press: () {
                print('Student access New Assignments');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NewAssignmentScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Past Assignments",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                print('Student access Past Assignments');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PastAssignmentScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
