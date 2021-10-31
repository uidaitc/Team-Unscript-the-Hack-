//create notification and pop up box
import 'package:aadhaar_address_update/config/theme.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotifBox extends StatefulWidget {
  NotifBox({Key? key, required this.type, required this.data})
      : super(key: key);
  final String type;
  final Map data;

  @override
  State<NotifBox> createState() => _NotifBoxState();
}

class _NotifBoxState extends State<NotifBox> {
  NotifBox get widget => super.widget;
  String type = '';
  Map data = {};

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    super.initState();
    type = widget.type;
    data = widget.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: getBox(context, type, data),
      ),
    );
  }

  Widget getBox(BuildContext context, String type, Map data) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.8,
        width: size.width * 0.9,
        color: Palette.background,
        child: getType(type, data));
  }

  Widget getType(String type, Map data) {
    if (type == 'dispute') {
      return Column(
        children: [
          Spacer(),
          Text(
            "Address Changed",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "The address from your Aadhar has been changed by the tenant. \n The new address is",
              style: TextStyle(
                fontSize: 16,
                // wordSpacing: 2
              ),
            ),
          ),
          Text(
            data['address'],
            style: TextStyle(fontSize: 18),
          ),
          Spacer(),
          TextButton(onPressed: () {}, child: Text("Raise a dispute")),
          Spacer()
        ],
      );
    } else if (type == "updated") {
      return Column(
        children: [
          Spacer(),
          Text(
            "Address Successfully Updated",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Thank you! Your address has been successfully updated.",
              style: TextStyle(
                fontSize: 16,
                // wordSpacing: 2
              ),
            ),
          ),
          Spacer(),
          TextButton(onPressed: () {}, child: Text("Ok")),
          Spacer()
        ],
      );
    } else if (type == "will-be-updated") {
      return Column(
        children: [
          Spacer(),
          Text(
            "Updation in Process",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "The address is being updated. The process will be completed by ${data['date']}",
              style: TextStyle(
                fontSize: 16,
                // wordSpacing: 2
              ),
            ),
          ),
          Spacer(),
          TextButton(onPressed: () {}, child: Text("Ok")),
          Spacer()
        ],
      );
    } else if (type == "dispute-raised") {
      return Column(
        children: [
          Spacer(),
          Text(
            "Dispute Raised",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "The landowner has raised a dispute. Please make the necessary changes and try again.",
              style: TextStyle(
                fontSize: 16,
                // wordSpacing: 2
              ),
            ),
          ),
          Spacer(),
          TextButton(onPressed: () {}, child: Text("Okay")),
          Spacer()
        ],
      );
    }
    return Container();
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
