import 'package:flutter/material.dart';
import 'package:foodapp/screens/HomeScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/screens/RegisterScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Material(
                    elevation: 5.0,
                    shadowColor: Colors.white,
                    child: Image(
                      height: 70,
                      image: AssetImage('images/store.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Log in to Account',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Material(
                  elevation: 2.0,
                  shadowColor: Colors.red.shade100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.4, color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Material(
                  elevation: 2.0,
                  shadowColor: Colors.red.shade100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.4, color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.red.shade400, blurRadius: 5.0)
                        ],
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red.shade600),
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    '- Or sign up with -',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      elevation: 2.0,
                      shadowColor: Colors.pinkAccent,
                      child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.google,
                            size: 35,
                            color: Colors.red.shade500,
                          ),
                          onPressed: () {
                            print("Pressed");
                          }),
                    ),
                    Material(
                      elevation: 2.0,
                      shadowColor: Colors.pinkAccent,
                      child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            size: 35,
                            color: Colors.red.shade500,
                          ),
                          onPressed: () {
                            print("Pressed");
                          }),
                    ),
                    Material(
                      elevation: 2.0,
                      shadowColor: Colors.pinkAccent,
                      child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            size: 35,
                            color: Colors.red.shade500,
                          ),
                          onPressed: () {
                            print("Pressed");
                          }),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: Colors.grey.shade900),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
