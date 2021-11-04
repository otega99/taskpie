import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                icon: Icon(
                  Icons.arrow_back,
                ), //Icon
                padding: EdgeInsets.all(0.0),
              ), //IconButton
              SizedBox(
                height: 40.0,
              ), //SizedBox
              Text(
                "Check your email",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ), //TextStyle
              ), //Text
              SizedBox(
                height: 15.0,
              ), //SizedBox
              Text(
                "Tap the [button] we've sent to marookg@gmail.com",
                style: TextStyle(
                  fontSize: 15.0,
                ), //TextStyle
              ), //Text
              SizedBox(
                height: 20.0,
              ), //SizedBox
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                onPressed: () {
                  Navigator.pushNamed(context, '/password');
                },
                child: Text(
                  'Open email app',
                  style: TextStyle(
                    color: Colors.white,
                  ), //TextStyle
                ), //Text
                minWidth: double.maxFinite,
                color: Colors.black,
              ), //FlatButton
            ] //<Widget>[]
                ), //Column
            Center(child: Text("Resend email in 45s"))
          ], //<Widget>[]
        ), //Column
      ), //Padding
    ) //Container
        ); //Scaffold
  }
}
