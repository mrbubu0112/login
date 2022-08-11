import 'package:flutter/material.dart';
class otp_login extends StatefulWidget {

  @override
  State<otp_login> createState() => _otp_loginState();
}

class _otp_loginState extends State<otp_login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Clarify via number phone",style: TextStyle(fontSize: 30)),
                SizedBox(height: 50),
                OutlinedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Icon(Icons.exit_to_app,size: 18,)),


              ],
            ),
          ),)


    );


  }
}