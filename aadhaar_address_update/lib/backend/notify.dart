//create notification and pop up box
import 'package:aadhaar_address_update/config/theme.dart';
import 'package:flutter/material.dart';

class NotifBox extends StatefulWidget {
  @override
  State<NotifBox> createState() => _NotifBoxState();
}

class _NotifBoxState extends State<NotifBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Palette.shade3)),
          child: Text("Get Notification"),
          onPressed: () {},
        ),
      ),
    );
  }
}
