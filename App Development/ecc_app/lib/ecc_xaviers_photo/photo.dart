import 'package:ecc_app/themes/theme.dart';
import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  const Photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Logo(logoImage: Image(
          image:AssetImage('ecc'),
        ),
        ),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  final Image logoImage;
  const Logo({Key? key, required this.logoImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.17,
      width: mediaQuery.width * 0.856,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kBlackColor),
        
      ),
      child: Row(children: [
        logoImage
      ],)
    );
  }
}