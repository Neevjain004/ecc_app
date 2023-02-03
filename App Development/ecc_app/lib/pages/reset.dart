
import 'package:ecc_app/forms/primary_button.dart';
import 'package:ecc_app/forms/reset_login.dart';
import 'package:ecc_app/pages/login.dart';
import 'package:flutter/material.dart';

import '../themes/theme.dart';

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
            const SizedBox(
              height: 250,
            ),
            Text(
              'Reset Password',
              style: titleText,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Please enter your Xavier\'s Email Address',
              style: subTitle,
            ),
            const SizedBox(
              height: 40,
            ),
            const ResetEmail(),
            const SizedBox(
              height: 55,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),),);
              },
              child: const PrimaryButton(buttonText: 'Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
