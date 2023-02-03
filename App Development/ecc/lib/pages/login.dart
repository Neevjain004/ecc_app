import 'package:ecc/ecc_xaviers_photo/photo.dart';
import 'package:ecc/forms/primary_button.dart';
import 'package:ecc/pages/SignUpScreen.dart';
import 'package:ecc/pages/reset.dart';
import 'package:ecc/themes/theme.dart';
import 'package:flutter/material.dart';
import '../forms/Login_Form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              height: 100,
            ),
            Photo(),
            SizedBox(
              height: 45,
            ),
            Text(
              'Welcome Back!',
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('New to this App?', style: subTitle),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            LogInForm(),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPassword(),
                      ),
                    );
              },
              child: Text(
                'Forgot Password?',
                style: textButton.copyWith(
                  decoration: TextDecoration.underline,
                  fontSize: 13,
                  color: kZambeziColor,
                ),
              ),
            ),
            SizedBox(
              height: 68,
            ),
            PrimaryButton(buttonText: 'Log In'),
          ]),
        ),
      ),
    );
  }
}
