// ignore_for_file: file_names
import 'package:ecc/forms/SignUpForm.dart';
import 'package:ecc/forms/check_box.dart';
import 'package:ecc/forms/primary_button.dart';
import 'package:ecc/pages/login.dart';
import 'package:ecc/themes/theme.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 104,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text('Create Account', style: titleText),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  Text(
                    'Already a member?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap:(){  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),),);
                    },
                    child: Text(
                      'Log In',
                      style: textButton.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: kDefaultPadding,
              child: CheckBox(),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: kDefaultPadding,
              child: PrimaryButton(buttonText: 'Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
