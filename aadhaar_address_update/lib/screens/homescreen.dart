import 'dart:convert';

import 'package:aadhaar_address_update/backend/api.dart';
import 'package:aadhaar_address_update/backend/logfile.dart';
import 'package:aadhaar_address_update/config/theme.dart';
import 'package:aadhaar_address_update/main.dart';
import 'package:aadhaar_address_update/screens/dispute.dart';
import 'package:aadhaar_address_update/screens/homescreen/updatescreen.dart';
import 'package:aadhaar_address_update/screens/verifyScreen.dart';
import 'package:aadhaar_address_update/widgets/toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key, required this.docId}) : super(key: key);
  final String docId;
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  homeScreen get widget => super.widget;
  String docId = '';
  var poi;
  var poa;
  @override
  void initState() {
    super.initState();
    docId = widget.docId;
    poi = ValidateOTP().getPOI()["Poi"];
    poa = ValidateOTP().getPOI()["Poa"];
    print(poi["dob"]);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
              elevation: 1,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              centerTitle: true,
              title: Text("Dashboard",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    //logout
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (BuildContext context) => SettingsPage()));
                  },
                ),
              ]),
          body: home()),
    );
  }

  Widget home() {
    CollectionReference user = FirebaseFirestore.instance.collection('users');
    return Center(
              child: Container(
                width: double.infinity,
                color: Palette.white,
                padding: EdgeInsets.only(left: 16, top: 25, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Your AADHAAR Details",
                          style: TextStyle(
                              color: Palette.shade1,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 50, width: 15),
                      Center(
                        child: Text("Your AADHAAR Number",
                            style: TextStyle(
                                color: Palette.shade1,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(height: 15, width: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Stack(
                              children: [
                                Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 4, color: Palette.white),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 2,
                                            blurRadius: 10,
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            offset: Offset(0, 10))
                                      ],
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                            "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                          ))),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${poi["name"]}',
                                  style: TextStyle(
                                    color: Palette.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text('${poi["dob"]}',
                                  style: TextStyle(
                                      color: Palette.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              Text('${poi["gender"]}',
                                  style: TextStyle(
                                      color: Palette.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20, width: 20),
                      Center(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Current Address",
                                  style: TextStyle(
                                      color: Palette.shade1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: 15, width: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text('${poa["house"]} '+'${poa["lm"]}, '+'${poa["street"]}, '+'${poa["loc"]}, '+'${poa["vtc"]}, '+'${poa["dist"]}, '+'${poa["state"]}, '+'${poa["country"]}, '+'${poa["pc"]}. ',
                                    style: TextStyle(
                                        color: Palette.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40, width: 20),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => verifyScreen()));
                        },
                        color: Palette.shade1,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Update Address".toUpperCase(),
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20, width: 20),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => disputeScreen()));
                        },
                        color: Palette.shade1,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "View Your Disputes".toUpperCase(),
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ]),
              ),
            );
  }
}
