import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  // Map data={};

  Future<Null> logOut() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 100.0, 15.0, 15.0),
          child: Column(
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                onPressed: () {
                  logOut();
                },
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Pro',
                  ), //TextStyle
                ), //Text
                minWidth: double.maxFinite,
                color: Colors.black,
              ), //FlatButton
            ], //<Widget>
          ), //Column
        ), //Padding
      ), //Container
    ); //Scaffold
  }
}
