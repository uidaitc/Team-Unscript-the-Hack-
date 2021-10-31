import 'package:aadhaar_address_update/backend/notify.dart';
import 'package:aadhaar_address_update/config/theme.dart';
import 'package:aadhaar_address_update/widgets/button_square.dart';
import 'package:aadhaar_address_update/widgets/container_otp.dart';
import 'package:flutter/material.dart';

class otpScreen extends StatelessWidget {
  const otpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String a, b, c, d, e, f;
    a = '1';
    b = '3';
    c = '2';
    d = '6';
    e = '7';
    f = '3';
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/Aadhar-Color.png',
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
                ContainerOTP(digit: a),
                ContainerOTP(digit: b),
                ContainerOTP(digit: c),
                ContainerOTP(digit: d),
                ContainerOTP(digit: e),
                ContainerOTP(digit: f)
              ],
            ),
            SizedBox(
              height: 73,
            ),
            InkWell(
              child: ButtonSq(
                title: 'LOGIN',
                // onTap: () {}
              ),
              onTap: () {
                int newOtp = getOTP(a, b, c, d, e, f);
                print(newOtp);
                // createNotification('Enter OTP', 'Please enter OTP');
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => NotifBox()),
                // );
              },
            )
          ],
        ),
      ),
    );
  }
}

int getOTP(String a, String b, String c, String d, String e, String f) {
  int otp = int.parse(a + b + c + d + e + f);
  return otp;
}
