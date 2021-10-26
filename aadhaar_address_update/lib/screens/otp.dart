import 'package:aadhaar_address_update/config/theme.dart';
import 'package:flutter/material.dart';

class otpScreen extends StatelessWidget {
  const otpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/Aadhar-Color.png', 
            ),
            SizedBox(height: 80),
            Text(
              'Enter OTP',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Palette.background),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ContainerOTP(),
                ContainerOTP(),
                ContainerOTP(),
                ContainerOTP(),
                ContainerOTP(),
                ContainerOTP()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ContainerOTP extends StatelessWidget {
  const ContainerOTP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Center(
        child: Text(
          '7',
          style: TextStyle(color: Palette.background, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        color: Palette.background.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
