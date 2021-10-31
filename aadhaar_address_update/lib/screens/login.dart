import 'package:aadhaar_address_update/backend/api.dart';
import 'package:aadhaar_address_update/backend/database.dart';
import 'package:aadhaar_address_update/backend/logfile.dart';
import 'package:aadhaar_address_update/backend/notify.dart';
import 'package:aadhaar_address_update/config/theme.dart';
import 'package:aadhaar_address_update/screens/otp.dart';
import 'package:aadhaar_address_update/screens/register.dart';
import 'package:aadhaar_address_update/widgets/button_square.dart';
import 'package:aadhaar_address_update/widgets/toast.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  late String phoneNo;
  bool validated = false;
  Icon phone = Icon(
    Icons.phone_android_outlined,
    color: Palette.shade2,
    size: 32,
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.all(25.0),
          child: Column(children: <Widget>[
            Image.asset("assets/images/Aadhar-Color.png",
                width: 300, height: 300),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hi, Welcome ',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Palette.background),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: controller,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    onChanged: (text) {
                      if (validatePhoneNo(text)) {
                        setState(() {
                          phone = Icon(
                            Icons.check_circle_outline,
                            color: Palette.success,
                            size: 32,
                          );
                          validated = true;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      prefix: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '(+91)',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      suffixIcon: phone,
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (validated) {
                          String sid = "999977354932";
                          ValidateOTP().sendOTP(sid);
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        } else {
                          showToast(context, "Incorrect Phone Number",
                              Palette.error, Icon(Icons.error_outline));
                        }
                      },
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          'Send',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  bool validatePhoneNo(String phno) {
    if (phno.length == 10) {
      return true;
    }
    return false;
  }
}
