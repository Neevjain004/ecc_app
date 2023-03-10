import 'package:ecc_app/forms/primary_button.dart';
import 'package:ecc_app/pages/SignUpScreen.dart';
import 'package:ecc_app/pages/reset.dart';
import 'package:ecc_app/themes/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../forms/Login_Form.dart';

class Login extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Login({super.key});
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              height: 45,
            ),
            Text(
              'Welcome Back!',
              style: titleText,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('New to this App?', style: subTitle),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
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
            const SizedBox(height: 10),
            const LogInForm(),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPassword(),
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
            const SizedBox(
              height: 68,
            ),
            // ElevatedButton.icon(
            //     onPressed: signIn,
            //     icon: const Icon(Icons.lock_open_rounded),
            //     label: const Text('Sign In')),
            //const PrimaryButton(buttonText: 'Log In'),
          ]),
        ),
      ),
    );
  }
  // Future signIn() async{
  //         await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  //         email: emailController.text.trim();
  //         password: passwordController.text.trim();

  //       }
}
