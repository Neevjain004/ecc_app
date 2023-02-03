// ignore_for_file: file_names
import 'package:ecc_app/themes/theme.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textBox('First Name', false),
        textBox('Last Name', false),
        textBox('Xavier\'s Email Id', false),
        textBox('Phone No.', false),
        textBox('Password', true),
        textBox('Confirm Password', true),
      ],
    );
  }

  Padding textBox(String text, bool visible) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: visible ? isVisible : false,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(
            color: kTextFieldColor,
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
          suffixIcon: visible
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: isVisible
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                )
              : null,
        ),
      ),
    );
  }
}
