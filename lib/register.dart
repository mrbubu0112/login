import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login/Url/url.dart';
import 'package:login/otp.dart';
import 'package:login/srceen_login.dart';

import 'main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: register(),
    );
  }
}

class register extends StatefulWidget {
  const register({super.key});



  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {

  var emailControler = TextEditingController();
  var passControler = TextEditingController();

  bool _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),

        title: Text("LOGIN"),
      ),
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.


      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    TextFormField(
                        controller: emailControler,
                        decoration: InputDecoration(
                            labelText: "Email",
                            border: UnderlineInputBorder(),
                            suffixIcon: Icon(Icons.email))
                    ),

                    SizedBox(height: 15,),
                    TextFormField(
                      controller: passControler,
                      obscureText: _isObscure,

                      decoration: InputDecoration(
                        labelText: "Password",
                        border: UnderlineInputBorder(),
                        suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }),
                      ),
                    ),



                    SizedBox(height: 15,),
                    OutlinedButton(onPressed: () {
                      login();
                    },


                      child: Text(" Đang Ký"),

                    ),
                    SizedBox(height: 15),
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => otp_login()));

                    },
                        child: Text("Quên mật khẩu")),


                  ],
                )

            )


        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //CREATE FUNCTION TO CALL LOGIN POST API

  Future<void> login() async {
    if (passControler.text.isNotEmpty && emailControler.text.isNotEmpty){
      var response= await http.post(Uri.parse(Add_url),
          headers: ({'user':emailControler.text,
            'password':passControler.text}));

      if(response.statusCode==200){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('sai tk hoac pass')));
      }
    } else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Khong de trong')));

    }//eve.holt@reqres.in
    //pistol

  }

}