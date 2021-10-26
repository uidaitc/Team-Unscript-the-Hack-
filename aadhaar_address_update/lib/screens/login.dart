import 'package:aadhaar_address_update/config/theme.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(25.0),
          child: Column(children: <Widget>[
            Image.asset("assets/images/Aadhar-Color.png",
                width: 300, height: 300),
                SizedBox(height: 40,),
            Text(
              'Hi, Welcome ',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Palette.background),
            ),
            SizedBox(height: 60),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Palette.background.withOpacity(.5),
                  borderRadius: BorderRadius.circular(14.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Palette.background.withOpacity(0.75),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14)),
                    ),
                    child: Center(
                      child: Text(
                        "+91",
                        style: TextStyle(
                            fontSize: 18,
                            color: Palette.text,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "       Enter Phone Number",
                      style: TextStyle(
                          fontSize: 18,
                          color: Palette.text.withOpacity(0.6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: double.infinity/2,
              height: 60,
              decoration: BoxDecoration(
                  color: Palette.background,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Generate OTP",
                  style: TextStyle(
                      fontSize: 18,
                      color: Palette.text,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
