import 'package:aadhaar_address_update/screens/dispute.dart';
import 'package:aadhaar_address_update/screens/home/homepage.dart';
import 'package:aadhaar_address_update/screens/login.dart';
import 'package:aadhaar_address_update/screens/otp.dart';
import 'package:aadhaar_address_update/screens/verifyScreen.dart';
import 'package:aadhaar_address_update/screens/homescreen/updatescreen.dart';
// import 'package:aadhaar_address_update/screens/homescreen/updatescreen.dart';
import 'package:aadhaar_address_update/screens/login.dart';
// import 'package:aadhaar_address_update/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:aadhaar_address_update/config/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  DateTime timeBackPressed = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        timeBackPressed = DateTime.now();
        final difference = DateTime.now().difference(timeBackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);

        timeBackPressed = DateTime.now();

        if (isExitWarning) {
          return false;
        } else {
          final message = 'Press back again to exit';
          Fluttertoast.showToast(msg: message, fontSize: 18);
          return true;
        }
      },
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Palette.shade1,
          primarySwatch: Colors.blue,
        ),
        home: loginScreen(),
      ),
    );
  }
}
