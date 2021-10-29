import 'package:aadhaar_address_update/config/theme.dart';
import 'package:flutter/material.dart';

class disputeScreen extends StatefulWidget {
  const disputeScreen({ Key? key }) : super(key: key);

  @override
  _disputeScreenState createState() => _disputeScreenState();
}

class _disputeScreenState extends State<disputeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
          title: Text("Raise Dispute",
         style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () { },
        ),
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
        ]
         ),

         body: Center(
           child: Container(
             color: Palette.white,
           padding: EdgeInsets.only(left: 16, top: 25, right: 16),
           child: Column(
             children: [
               Center(
                 child: Text('Disputes Raised',style: TextStyle(
                        color: Palette.shade1,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,decoration: TextDecoration.underline)),
               ),
           SizedBox(width: 15, height: 15),
           Padding(
                padding: const EdgeInsets.fromLTRB(15,4,15,4),
                child: Table(
                  border: TableBorder.all(),
                  columnWidths: {1: FlexColumnWidth(1.5)},
                  children: [
                    TableRow(
                      children: [
                        Text('Name',
                        style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold )),

                        Text('Address',
                        style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold )),

                        Text('Issue',
                        style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ))
                      ]
                    )

                  ],
                )
                  
                        
                        
                        
                  ),
           ],),
           
         
    ),
         ),
    );

  }
}