import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Challenge%20Results/challenges_results.dart';
import 'package:flutter_auth/Screens/Create%20New%20Challenges/create_new_challenge.dart';
import 'package:flutter_auth/Screens/New%20Assignments/new_assignment_screen.dart';
import 'package:flutter_auth/Screens/Pending%20Challenges/pending_challenges_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';

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
              "Challenges!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Create Challenges",
              press: () {
                print('Student create challenges');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CreateNewChallengeScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Pending Challenges",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                print('Student access Pending Challenges');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PendingChallengesScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Results",
              press: () {
                print('Student access Results');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChallengeResultScreen();
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
