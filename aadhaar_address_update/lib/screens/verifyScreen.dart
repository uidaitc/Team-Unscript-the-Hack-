import 'package:aadhaar_address_update/config/theme.dart';
import 'package:flutter/material.dart';
class verifyScreen extends StatefulWidget {
  const verifyScreen({ Key? key }) : super(key: key);

  @override
  _verifyScreenState createState() => _verifyScreenState();
}

class _verifyScreenState extends State<verifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
          title: Text("abc",
         style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () { },
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
        ]
         ),

         body: Container(
           color: Palette.white,
           padding: EdgeInsets.only(left: 16, top: 25, right: 16),
           child: Column(
             children: [
               Text("XYZ",style: TextStyle(
                      color: Palette.shade1,
                      fontSize: 22,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 15,width: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(15,4,15,4),
                child: Container(
                  height: 80,
                  child: TextField(
                    style: TextStyle(
                      color: Palette.shade2
                    ),
                    cursorColor: Palette.shade1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Palette.text)),
                    prefixText: '+91',
                    
                        hintText: "     Enter Landlord's Number",
                        fillColor: Palette.shade3),
                        
                        
                        
                  ),
                ),
              ),
              SizedBox(height: 15, width: 15),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15,4,15,4),
                  child: Container(
                    height: 80,
                    child: TextField(
                      style: TextStyle(
                        color: Palette.shade2
                      ),
                      cursorColor: Palette.shade1,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Palette.text)),
                      helperText: '           Please Enter the 6 digit OTP sent to your owner',
                      prefixIcon: Icon(Icons.lock),
                  
                      
                          hintText: "            Enter OTP",
                          fillColor: Palette.shade3),
                          
                          
                          
                    ),
                  ),
                ),
              ),
               Center(
                 child: RaisedButton(
                      onPressed: () {},
                      color: Palette.shade1,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Verify".toUpperCase(),
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  
               ),
               SizedBox(height: 50),
               
               //add fetching data function here


               Center(
                 child: Container(child: Center(
                   child: Center(

                     child: Row(
                       children: [
                         SizedBox(width: 70),
                         RaisedButton(onPressed: (){},
                         color: Palette.shade1,
                         
            
            
            child: Text('Yes'),textColor: Palette.white,),
            SizedBox(width: 50),

             RaisedButton(onPressed: (){},
             color: Palette.shade1,
             padding: const EdgeInsets.fromLTRB(15,4,15,4),
            
            
            
            child: Text('No'),textColor: Palette.white,),
             

],
                     ),
                   ),
                 ),),
               ),
            


            
             ],
             

           ),
        

         ),
         
        

      
    );
  }
}