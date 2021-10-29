//access firestore
import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  void addData(String userID, String name, String phno, String dob,
      String gender, String address, String photo) {
    userCollection.doc(userID).update({
      "Phone": phno,
      "Name": name,
      "DOB": dob,
      "Gender": gender,
      "Address": address,
      "img": photo
    });
  }
}
