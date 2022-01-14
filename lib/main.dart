import 'package:flutter/material.dart';
import 'package:shikshapulse/screen/Dashboard.dart';
import './screen/Login_screen.dart';
import './screen/Main_screen.dart';
import './screen/BottomNavigation_screen.dart';
import './screen/resetpwd_screen.dart';
import './screen/Subjects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
         //   primarySwatch: Colors.blue,
        fontFamily: 'Roboto-Regular'

      ),
      home: Subjects(),
      routes: {
        MainScreen.id :(context)=>MainScreen(),
        RespwdScreen.id : (context)=> const RespwdScreen(),
        Subjects.id : (context)=> Subjects()
      },
    );
  }
}


