import 'package:aadhaar_address_update/screens/dispute.dart';
import 'package:aadhaar_address_update/screens/homescreen.dart';
import 'package:aadhaar_address_update/screens/login.dart';
import 'package:aadhaar_address_update/screens/verifyScreen.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:aadhaar_address_update/config/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() async {
  AwesomeNotifications().initialize(
      "",
      [
        NotificationChannel(
            channelKey: 'basic_channel',
            channelName: 'Basic Notifications',
            defaultColor: Palette.background,
            importance: NotificationImportance.High,
            channelShowBadge: true),
      ],
      debug: true);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.shade1,
        primarySwatch: Colors.blue,
      ),
      home: loginScreen(),
    );
  }
}
