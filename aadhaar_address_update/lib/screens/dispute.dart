import 'package:aadhaar_address_update/config/theme.dart';
import 'package:flutter/material.dart';

class disputeScreen extends StatefulWidget {
  const disputeScreen({Key? key}) : super(key: key);

  @override
  _disputeScreenState createState() => _disputeScreenState();
}

class _disputeScreenState extends State<disputeScreen> {
  List<String> names = ['Name', 'Rohit Singh', 'Mohit Raina'];
  List<String> address = ['Address', 'PS', 'FC'];
  List<String> status = ['Status', 'Raised', 'Resolved'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Text("Raise Dispute",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
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
          ]),
      body: Center(
        child: Container(
          color: Palette.white,
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          child: Column(
            children: [
              Center(
                child: Text('Disputes Raised',
                    style: TextStyle(
                        color: Palette.shade1,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline)),
              ),
              SizedBox(width: 15, height: 15),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                  child: Table(
                    border: TableBorder.all(),
                    columnWidths: {1: FlexColumnWidth(1.5)},
                    children:
                        List.generate(names.length, (index) => getRow(index)),
                    // TableRow(
                    //   children: [
                    //     Text('Name',
                    //     style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold )),

                    //     Text('Address',
                    //     style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold )),

                    //     Text('Status',
                    //     style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ))
                    //   ]
                    // )
                  )),
            ],
          ),
        ),
      ),
    );
  }

  TableRow getRow(int i) {
    return TableRow(children: [
      Text('${names[i]}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text('${address[i]}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text('${status[i]}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
    ]);
  }
}
