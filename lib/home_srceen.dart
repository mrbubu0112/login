


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}
class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

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
      home: HomeSrceen(),

    );
  }
}

class HomeSrceen extends StatefulWidget{

  @override
  State<HomeSrceen>  createState() => _HomeScreenStage ();

  }

class _HomeScreenStage extends State<HomeSrceen>{
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Stack(
                    children: [
                      ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.receipt_long_outlined), label: Text(" Nhận đồ hộ"),style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size.fromRadius(50))),)
                      ,
        //           Positioned(bottom: 10,
        // right: 10,
        // child: Container(
        //   width: 150,
        //   height: 90,
        //   color: Colors.red,)),
                    
                    ],),
          //Text("Nhận đồ hộ"),
          //Text("Nhận đồ hộ"),

          //,
          //Expanded(
          //flex: 1,
          //child: Icon(Icons.ac_unit, size: 64, color: Colors.blue),
          //),
                Spacer(flex: 2),
                ElevatedButton(
              child: Text("Button 2"),
              onPressed: () {},
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size.square(100)))),
          Spacer(flex: 2),
          ElevatedButton(child: Text("BTN 3"), onPressed: () {}),
        ])),
      ),
    );
  }



}
