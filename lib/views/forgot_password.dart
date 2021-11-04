import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                ), //Icon
                padding: EdgeInsets.all(0.0),
              ), //IconButton
              SizedBox(
                height: 30.0,
              ), //SizedBox
              Text(
                "Forgot password?",
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Pro',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ), //TextStyle
              ), //Text
              SizedBox(
                height: 15.0,
              ), //SizedBox
              Text(
                "Please enter your email to recieve a link to reset your password.",
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Pro',
                ), //TextStyle
              ), //Text
              SizedBox(
                height: 15.0,
              ), //SizedBox
              TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Pro',
                  fontWeight: FontWeight.bold,
                ),
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
              SizedBox(
                height: 15.0,
              ), //SizedBox
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/user');
                },
                child: Text(
                  'Send Link',
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
