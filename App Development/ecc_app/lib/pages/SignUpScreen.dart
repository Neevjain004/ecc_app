// ignore_for_file: file_names
import 'package:ecc_app/forms/SignUpForm.dart';
import 'package:ecc_app/forms/check_box.dart';
import 'package:ecc_app/forms/primary_button.dart';
import 'package:ecc_app/pages/login.dart';
import 'package:ecc_app/themes/theme.dart';
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
            const SizedBox(
              height: 104,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text('Create Account', style: titleText),
            ),
            const SizedBox(
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
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap:(){  Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(),),);
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
            const SizedBox(
              height: 22,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: CheckBox(),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: kDefaultPadding,
              child: PrimaryButton(buttonText: 'Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
