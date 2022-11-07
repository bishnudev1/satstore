import 'package:flutter/material.dart';
import 'package:foodapp/screens/HomeScreen.dart';

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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                validator: (value) {
                  return value!.isEmpty ? 'Enter valid email' : null;
                },
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter email address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: passController,
                validator: (value) {
                  return value!.isEmpty ? 'Enter valid password' : null;
                },
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password)),
              ),
              SizedBox(
                height: 5.0,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password ?',
                        style: TextStyle(color: Colors.red.shade600),
                      ))),
              SizedBox(
                height: 5.0,
              ),
              InkWell(
                onTap: (){
                  if(_formKey.currentState!.validate()){
                    print('Hello');
                  }
                  else{
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                  }
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red.shade600,
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Does not have an Account ?'),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.red.shade600),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
