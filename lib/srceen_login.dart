import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login/Url/url.dart';
class Screen_login extends StatefulWidget {

  @override
  State<Screen_login> createState() => _Screen_loginState();
}

class _Screen_loginState extends State<Screen_login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("welcome",style: TextStyle(fontSize: 30)),
          SizedBox(height: 50),
            OutlinedButton(onPressed: ()=> exit(0)

            , child: Icon(Icons.exit_to_app,size: 18,)),
            SizedBox(height: 50,),
            OutlinedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("qua trang dang nhap")),
            SizedBox(height: 50,),

            Image.network(urllink,height: 300   ,width: 300,),


          ],
      ),
        ),)


    );


}
}