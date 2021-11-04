import 'package:flutter/material.dart';

String welcome = "Welcome to Taskpie! We are so excited that you decided to join us. As a member of taskpie, we want you to have the best time using our services and to ensure that the taskpie experience is tailored to you and your needs.";

class Created extends StatefulWidget {
  @override
  _CreatedState createState() => _CreatedState();
}

class _CreatedState extends State<Created> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 80.0, 15.0, 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Your account has been created. Yay!",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Pro',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ), //TextStyle
                  ), //Text
                  SizedBox(
                    height: 20.0,
                  ), //SizedBox
                  Text(
                    '$welcome',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                ], //<Widget>[]
              ), //Column
              Column(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                    onPressed: () {
                      Navigator.pushNamed(context, '/roles');
                    },
                    child: Text(
                      'Next',
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
            ], //<Widget>[]
          ), //Column
        ), //Padding
      ), //Container
    ); //Scaffold
  }
}
