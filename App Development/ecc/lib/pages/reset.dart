import 'package:ecc/forms/primary_button.dart';
import 'package:ecc/forms/reset_login.dart';
import 'package:ecc/pages/login.dart';
import 'package:ecc/themes/theme.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              'Reset Password',
              style: titleText,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Please enter your Xavier\'s Email Address',
              style: subTitle,
            ),
            SizedBox(
              height: 40,
            ),
            ResetEmail(),
            SizedBox(
              height: 55,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),),);
              },
              child: PrimaryButton(buttonText: 'Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
