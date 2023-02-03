// ignore_for_file: file_names

import 'package:ecc/themes/theme.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LogInForm> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Email', false),
        buildInputForm('Password', true),
      ],
    );
  }

  Padding buildInputForm(String label, bool pass) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(
          obscureText: pass ? isVisible : false,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                color: kTextFieldColor,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
              ),
              suffixIcon: pass
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                          isVisible ? Icons.visibility_off : Icons.visibility),
                    )
                  : null),
        ),
      );
}
