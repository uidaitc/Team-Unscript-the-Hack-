//all funcs related to log
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

void generateLogFile() {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  firebase_storage.Reference ref = storage.ref('');
  var logData = ref.getData();
  print(logData);
}

Future<void> writeLogs(String filepath, String data) async {
  File logFile = File(filepath);
  print(logFile.absolute);
  await logFile.writeAsString(data);
}

Future<void> loadData() async {
  final _loadedData = await rootBundle.loadString('assets/logs/aadhar-log.txt');
  print(_loadedData);
}

Future<String> getDirPath() async {
  final _dir = await getApplicationDocumentsDirectory();
  return _dir.path;
}

Future<String> readData() async {
  final _dirPath = await getDirPath();
  final _myFile = File('$_dirPath/aadhar-logs.txt');
  final _data = await _myFile.readAsString(encoding: utf8);
  return _data;
}

Future<void> writeData(String newData) async {
  final _dirPath = await getDirPath();
  final _myFile = File('$_dirPath/aadhar-logs.txt');
  String data = await readData();
  data = data + "\n" + newData;
  // If data.txt doesn't exist, it will be created automatically
  await _myFile.writeAsString(data);
}

Future<void> printLogs() async {
  final _dirPath = await getDirPath();
  final _myFile = File('$_dirPath/aadhar-logs.txt');
  final _data = await _myFile.readAsString(encoding: utf8);
  print(_data);
}
