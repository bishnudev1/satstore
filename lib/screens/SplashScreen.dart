import 'package:flutter/material.dart';
import 'package:foodapp/screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: 200,
            image: AssetImage('images/store.jpg'),
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
              child: Text(
            'Sat Store',
            style: TextStyle(fontSize: 30),
          ))
        ],
      ),
    );
  }
}
