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
    // AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
    //   showDialog(
    //       context: context,
    //       builder: (context) => AlertDialog(
    //             title: Text('Allow Notification'),
    //             content: Text('Please allow the app to send notifications.'),
    //             actions: [
    //               TextButton(
    //                 onPressed: () {
    //                   Navigator.pop(context);
    //                 },
    //                 child: Text(
    //                   "Don't allow",
    //                   style: TextStyle(color: Palette.shade2, fontSize: 18),
    //                 ),
    //               ),
    //               TextButton(
    //                 onPressed: () => AwesomeNotifications()
    //                     .requestPermissionToSendNotifications()
    //                     .then((_) => Navigator.pop(context)),
    //                 child: Text(
    //                   "Allow",
    //                   style: TextStyle(color: Palette.shade2, fontSize: 18),
    //                 ),
    //               ),
    //             ],
    //           ));
    // });
    // AwesomeNotifications().actionStream.listen((notification) {
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => NotifBox(
    //                 type: "dispute-raised",
    //                 data: {},
    //               )));
    // });
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
                          String sid = "999931724199";
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
            // Container(
            //   width: double.infinity,
            //   height: 60,
            //   decoration: BoxDecoration(
            //       color: Palette.background.withOpacity(.5),
            //       borderRadius: BorderRadius.circular(14.0)),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: <Widget>[
            //       Container(
            //         width: 60,
            //         height: 60,
            //         decoration: BoxDecoration(
            //           color: Palette.background.withOpacity(0.75),
            //           borderRadius: BorderRadius.only(
            //               topLeft: Radius.circular(14),
            //               bottomLeft: Radius.circular(14)),
            //         ),
            //         child: Center(
            //           child: Text(
            //             "+91",
            //             style: TextStyle(
            //                 fontSize: 18,
            //                 color: Palette.text,
            //                 fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //       ),
            //       Center(
            //         child: Text(
            //           "       Enter Phone Number",
            //           style: TextStyle(
            //               fontSize: 18,
            //               color: Palette.text.withOpacity(0.6),
            //               fontWeight: FontWeight.bold),
            //         ),
            //         //  child:   TextField(
            //         //   keyboardType: TextInputType.phone,
            //         //   decoration: InputDecoration(
            //         //     hintText: "Enter Phone Number",
            //         //     fillColor: Palette.background),
            //         //     onChanged: (val){
            //         //       setState(() {

            //         //         this.phoneNo = val;
            //         //       });

            //         //     }
            //         //    )
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 70,
            // ),
            // InkWell(
            //   child: ButtonSq(
            //     title: 'Generate OTP',
            //     // onTap: () {
            //     //   Navigator.push(context,
            //     //       MaterialPageRoute(builder: (context) => otpScreen()));
            //     // },
            //   ),
            //   onTap: (){
            //     Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => otpScreen()));
            //   },
          ]),
        ),
      ),
    );
  }

  bool validatePhoneNo (String phno){
    if (phno.length == 10) {
      return true;
    }
    return false;
  }
}
