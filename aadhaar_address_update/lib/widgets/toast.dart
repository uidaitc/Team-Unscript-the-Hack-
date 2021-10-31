import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// FToast fToast;

void showToast(BuildContext context, String msg, Color c, Icon i) {
  FToast fToast = FToast();
  fToast.init(context);
  Widget toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: c,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        i,
        SizedBox(
          width: 12.0,
        ),
        Text(msg),
      ],
    ),
  );
  fToast.showToast(
    child: toast,
    gravity: ToastGravity.BOTTOM,
    toastDuration: Duration(seconds: 3),
  );
}
