import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 100.0, 15.0, 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Never miss a thing, stay in the loop.",
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
                    "Taskpie sends notifications to keep you updated on your tasks.",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                ], //<Widget>[]
              ), //Column
              Column(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                    onPressed: () {},
                    child: Text(
                      'Turn on Notifications',
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
