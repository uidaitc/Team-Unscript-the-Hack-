import 'package:aadhaar_address_update/config/theme.dart';
import 'package:aadhaar_address_update/screens/otp.dart';
import 'package:aadhaar_address_update/screens/register.dart';
import 'package:aadhaar_address_update/widgets/button_square.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  late String phoneNo;

  @override
  Widget build(BuildContext context) {
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
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 32,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Register()),
                          );
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
}
