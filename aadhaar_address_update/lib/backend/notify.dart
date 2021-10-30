//create notification and pop up box
import 'package:aadhaar_address_update/config/theme.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotifBox extends StatefulWidget {
  @override
  State<NotifBox> createState() => _NotifBoxState();
}

class _NotifBoxState extends State<NotifBox> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    super.initState();
   
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Palette.shade3)),
          child: Text("Get Notification"),
          onPressed: () {},
        ),
      ),
    );
  }
}

Future<void> createNotification(String title, String body) async {
  await AwesomeNotifications().createNotification(
      content: NotificationContent(
    id: 0,
    channelKey: 'basic_channel',
    title: title,
    body: body,
    notificationLayout: NotificationLayout.Default,
  ));
}
