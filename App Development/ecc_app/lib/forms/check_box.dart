import 'package:ecc_app/themes/theme.dart';
import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  _isSelected = ! _isSelected;
                });
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: kDarkGreyColor),
                ),
                child: _isSelected ? Icon(Icons.check, size:17, color: Colors.green[800],): null ,
              ),
            ),
            const SizedBox(width: 10),
            Text('I Agree to the Terms & Conditions.', style: description)
          ],
        )
      ],
    );
  }
}
