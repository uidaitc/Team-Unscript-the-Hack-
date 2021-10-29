import 'package:aadhaar_address_update/screens/homescreen/updatescreen.dart';
import 'package:aadhaar_address_update/screens/login.dart';
import 'package:aadhaar_address_update/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:aadhaar_address_update/config/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.shade1,
        primarySwatch: Colors.blue,
      ),
      home: loginScreen(),
    );
  }
}

