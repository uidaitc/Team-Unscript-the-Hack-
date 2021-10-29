import 'package:aadhaar_address_update/config/theme.dart';
import 'package:flutter/material.dart';

class ButtonSq extends StatelessWidget {
  final String title;
 // final Function onTap;

  const ButtonSq({Key? key, required this.title, 
  // required this.onTap
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Palette.background, borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18, color: Palette.text, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
