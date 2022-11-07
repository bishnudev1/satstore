import 'package:flutter/material.dart';
import 'package:foodapp/screens/HomeScreen.dart';
import 'package:foodapp/screens/SplashScreen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: SplashScreen(),
    );
  }
}