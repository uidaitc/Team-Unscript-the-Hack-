//access firestore
import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  Database();
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference disputeCollection =
      FirebaseFirestore.instance.collection('disputes');

  void addUser(String name, String phno, String dob, String gender,
      String address, String photo) {
    // print("In add function******************");
    userCollection.add({
      "Phone": phno,
      "Name": name,
      "DOB": dob,
      "Gender": gender,
      "Address": address,
      "img": photo
    });
  }

  void addDispute(String tPhNo, String tName, String oPhNo, String oName,
      String address, String status) {
    disputeCollection.add({
      "Tenant Ph no": tPhNo,
      "Tenant Name": tName,
      "Owner Ph no": oPhNo,
      "Owner Name": oName,
      "Address": address,
      "Status": status
    });
  }

  Map getUser() {
    return {};
  }
}

bool inRange(String latt1, String long1, String latt2, String long2) {
  double lat1 = double.parse(latt1);
  double lon1 = double.parse(long1);
  double lat2 = double.parse(latt2);
  double lon2 = double.parse(long2);
  if ((lat1.toStringAsFixed(2) == lat2.toStringAsFixed(2)) &&
      (lon1.toStringAsFixed(2) == lon2.toStringAsFixed(2))) {
    return true;
  }
  return false;
}
