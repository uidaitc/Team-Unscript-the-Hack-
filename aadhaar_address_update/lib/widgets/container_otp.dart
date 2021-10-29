import 'package:aadhaar_address_update/config/theme.dart';
import 'package:flutter/material.dart';

class ContainerOTP extends StatelessWidget {
  final String digit;
  const ContainerOTP({
    Key? key,
    required this.digit
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Center(
        child: Text(
          '$digit',
          style: TextStyle(
              color: Palette.background,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        color: Palette.background.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
