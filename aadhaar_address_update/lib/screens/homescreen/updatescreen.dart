import 'package:aadhaar_address_update/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  //bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'hi',
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
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
        ],
      ),
      body: Container(
        color: Palette.white,
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Builder(builder: (context) {
                return Text(
                  "Update Aadhaar Details",
                  style: TextStyle(
                      color: Palette.shade1,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                );
              }),
              SizedBox(
                height: 15,
              ),
              // Center(
              //   child: Stack(
              //     children: [
              //       Container(
              //         width: 130,
              //         height: 130,
              //         decoration: BoxDecoration(
              //             border: Border.all(
              //                 width: 4,
              //                 color: Palette.white),
              //             boxShadow: [
              //               BoxShadow(
              //                   spreadRadius: 2,
              //                   blurRadius: 10,
              //                   color: Colors.black.withOpacity(0.1),
              //                   offset: Offset(0, 10))
              //             ],
              //             shape: BoxShape.circle,
              //             image: DecorationImage(
              //                 fit: BoxFit.cover,
              //                 image: NetworkImage(
              //                   "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
              //                 ))),
              //       ),
              //       Positioned(
              //           bottom: 0,
              //           right: 0,
              //           child: Container(
              //             height: 40,
              //             width: 40,
              //             decoration: BoxDecoration(
              //               shape: BoxShape.circle,
              //               border: Border.all(
              //                 width: 4,
              //                 color: Palette.shade3,
              //               ),
              //               color: Colors.purpleAccent,
              //             ),
              //             child: Icon(
              //               Icons.edit,
              //               color: Colors.white,
              //             ),
              //           )),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 35,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                child: Container(
                  height: 50,
                  child: TextField(
                    style: TextStyle(color: Palette.shade2),
                    cursorColor: Palette.shade1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Door/Flat Number",
                        fillColor: Palette.shade3),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                child: Container(
                  height: 50,
                  child: TextField(
                    style: TextStyle(color: Palette.shade2),
                    cursorColor: Palette.shade1,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Society Name", fillColor: Palette.shade1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                child: Container(
                  height: 50,
                  child: TextField(
                    style: TextStyle(color: Palette.shade2),
                    cursorColor: Palette.shade1,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Landmark", fillColor: Palette.shade3),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                child: Container(
                  height: 50,
                  child: TextField(
                    style: TextStyle(color: Palette.shade2),
                    cursorColor: Palette.shade1,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Street Name", fillColor: Palette.shade3),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                child: Container(
                  height: 50,
                  child: TextField(
                    style: TextStyle(color: Palette.shade2),
                    cursorColor: Palette.shade1,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Locality", fillColor: Palette.shade3),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  width: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'City',
                      style: TextStyle(
                        color: Palette.text,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.text),
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.white,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  width: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'State',
                      style: TextStyle(
                        color: Palette.text,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.text),
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.white,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  width: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Pin Code',
                      style: TextStyle(
                        color: Palette.text,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    border: Border.all(color: Palette.text),

                    borderRadius: BorderRadius.circular(10),
                    color: Palette.white,
                  ),
                ),
              ),

              // buildTextField("Full Name", "Amit Shah", false),
              // buildTextField("E-mail", "ashah@gmail.com", false),
              // buildTextField("Aadhar UID", "********", false),
              // buildTextField("DOB", "26-10-2021", false),
              // buildTextField("Address", "Pashan, Pune", false),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: deprecated_member_use
                  // RaisedButton(
                  //   color: Colors.white,
                  //   //padding: EdgeInsets.symmetric(horizontal: 50),
                  //   shape: RoundedRectangleBorder(

                  //       borderRadius: BorderRadius.circular(20)),
                  //   onPressed: () {},
                  //   child: Text("DISPUTE",
                  //       style: TextStyle(
                  //           fontSize: 14,
                  //           letterSpacing: 2.2,
                  //           color: Colors.black)),
                  // ),
                  RaisedButton(
                    onPressed: () {},
                    color: Palette.shade1,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Confirm Changes".toUpperCase(),
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
  //   return Padding(
  //     padding: const EdgeInsets.only(bottom: 35.0),
  //     child: Container(
  //       //obscureText: isPasswordTextField ? showPassword : false,
  //       decoration: BoxDecoration(
  //           // //suffixIcon: isPasswordTextField
  //           //     ? IconButton(
  //           //         onPressed: () {
  //           //           setState(() {
  //           //             showPassword = !showPassword;
  //           //           });
  //           //         },
  //           //         icon: Icon(
  //           //           Icons.remove_red_eye,
  //           //           color: Colors.grey,
  //           //         ),
  //           //       )
  //           //     : null,
  //           contentPadding: EdgeInsets.only(bottom: 3),
  //           labelText: labelText,
  //           floatingLabelBehavior: FloatingLabelBehavior.always,
  //           hintText: placeholder,
  //           hintStyle: TextStyle(
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //             color: Colors.black,
  //           )),
  //     ),
  //   );
  // }
}
