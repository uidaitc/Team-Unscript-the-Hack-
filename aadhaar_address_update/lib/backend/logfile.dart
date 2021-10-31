//all funcs related to log
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

void generateLogFile() {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
}

Future<void> getLogFile() async {
  print("Log func");
  String downloadURL = await firebase_storage.FirebaseStorage.instance
      .ref('auditLog.txt')
      .getDownloadURL();
  print(downloadURL);
}

// Future<void> listExample() async {
//   firebase_storage.ListResult result =
//       await firebase_storage.FirebaseStorage.instance.ref().listAll();

//   result.items.forEach((firebase_storage.Reference ref) {
//     print('Found file: $ref');
//   });

//   result.prefixes.forEach((firebase_storage.Reference ref) {
//     print('Found directory: $ref');
//   });
// }

Future<void> writeLogs(String filepath, String data) async {
  File logFile = File(filepath);
  print(logFile.absolute);
  await logFile.writeAsString(data);
}
