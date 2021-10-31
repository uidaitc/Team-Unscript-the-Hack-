import 'package:aadhaar_address_update/backend/api.dart';
import 'package:aadhaar_address_update/backend/notify.dart';
import 'package:aadhaar_address_update/config/theme.dart';
import 'package:aadhaar_address_update/screens/homescreen/updatescreen.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class verifyScreen extends StatefulWidget {
  const verifyScreen({Key? key}) : super(key: key);

  @override
  _verifyScreenState createState() => _verifyScreenState();
}

class _verifyScreenState extends State<verifyScreen> {
  bool isVerified = true;
  Widget address = Container();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Text("Update Address",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          automaticallyImplyLeading: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => SettingsPage()));
              },
            ),
          ]),
      body: Container(
        color: Palette.white,
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: Column(
          children: [
            Text("XYZ",
                style: TextStyle(
                    color: Palette.shade1,
                    fontSize: 22,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 15, width: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
              child: Container(
                height: 80,
                child: TextField(
                  style: TextStyle(color: Palette.shade2),
                  cursorColor: Palette.shade1,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_android_outlined),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.text)),
                      // prefixText: '+91',
                      hintText: "Enter Introducer's Number",
                      fillColor: Palette.shade3),
                ),
              ),
            ),
            SizedBox(height: 15, width: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                child: Container(
                  height: 80,
                  child: TextField(
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Palette.shade2),
                    cursorColor: Palette.shade1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Palette.text)),
                        helperText:
                            '           Please Enter the 6 digit OTP sent to your Introducer',
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Enter OTP",
                        fillColor: Palette.shade3),
                  ),
                ),
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    address = getAddress(isVerified);
                  });
                },
                color: Palette.shade1,
                padding: EdgeInsets.symmetric(horizontal: 50),
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Verify".toUpperCase(),
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 50),

            //add fetching data function here
            address,
          ],
        ),
      ),
    );
  }

  // Widget getAddress(bool isVerified)  {
  //List latlong =  PlacesService().getAutocomplete('IISER, Pune');
  Widget getAddress(bool isVerified) {
    if (isVerified) {
      return Container(
        child: Center(
          child: Container(
            child: Row(
              children: [
                SizedBox(width: 70),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotifBox(
                                    type: 'will-be-updated',
                                    data: {
                                      'date':
                                          '${DateTime.now().add(Duration(days: 7))}'
                                    })));
                  },
                  color: Palette.shade1,
                  child: Text('Yes'),
                  textColor: Palette.white,
                ),
                SizedBox(width: 50),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UpdatePage()));
                  },
                  color: Palette.shade1,
                  padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                  child: Text('No'),
                  textColor: Palette.white,
                ),
              ],
            ),
          ),
        ),
      );
    }
    return CircularProgressIndicator(color: Palette.text);
  }

  calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }
}
