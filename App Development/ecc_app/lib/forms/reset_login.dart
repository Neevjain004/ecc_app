import 'package:ecc_app/themes/theme.dart';
import 'package:flutter/material.dart';

class ResetEmail extends StatelessWidget {
  const ResetEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Email Id',
        hintStyle: TextStyle(color: kTextFieldColor),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kPrimaryColor),),
      ),
    );
  }
}