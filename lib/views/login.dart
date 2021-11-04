import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // Map data = {};

  // Future<Null> signIn(data) async {
  //   data = ModalRoute.of(context).settings.arguments;
  //   print(data);
  //   final SharedPreferences prefs = data['prefs'];
  //   prefs.setString('username', username.text);
  //   prefs.setString('email', email.text);
  //   prefs.setString('phone', phone.text);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 75.0, 15.0, 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Login to continue",
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'Pro',
                  fontWeight: FontWeight.bold,
                ), //TextStyle
              ), //Text
              SizedBox(height: 10.0), //SizedBox
              Row(
                children: <Widget>[
                  Text(
                    "New here?",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Pro',
                      fontWeight: FontWeight.bold,
                    ), //TextStyle
                  ), //Text
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: Text(
                      " Create an account ",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Pro',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ), //TextStyle
                    ), //Text
                  ), //FlatButton
                  Text(
                    "to get started",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Pro',
                      fontWeight: FontWeight.bold,
                    ), //TextStyle
                  ), //Text
                ], //<Widget>[]
              ), //Row
              SizedBox(height: 30.0), //SizedBox
              TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Pro',
                  fontWeight: FontWeight.bold,
                ),
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5.0,
                      color: Colors.black,
                    ), //BorderSide
                  ),
                  hintText: 'Email address',
                ),
              ), //TextField
              SizedBox(height: 15.0), //SizedBox
              TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Pro',
                  fontWeight: FontWeight.bold,
                ),
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5.0,
                      color: Colors.black,
                    ), //BorderSide
                  ),
                  labelText: 'Password',
                ),
              ), //TextField
              SizedBox(height: 7.5), //SizedBox
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/forgot');
                },
                child: Text(
                  "Forgot password ?",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'Pro',
                  ), //TextStyle
                ), //Text
              ), //GestureDetector
              SizedBox(
                height: 20.0,
              ), //SizedBox
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Pro',
                  ), //TextStyle
                ), //Text
                minWidth: double.maxFinite,
                color: Colors.black,
              ), //FlatButton
            ], //<Widget>[]
          ), //Column
        ), //Padding
      ), //Container
    ); //Scaffold
  }
}
