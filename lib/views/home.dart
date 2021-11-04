import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    autoLogIn();
  }

  void autoLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String userId = prefs.getString('username');

    if (userId == null) {
      Navigator.pushReplacementNamed(context, '/description', arguments: {
        'prefs': prefs
      });
    } else {
      Navigator.pushReplacementNamed(context, '/user');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/pie.jpeg'),
            ), //CircleAvatar
            SizedBox(height: 10.0), //SizedBox
            Text(
              "TaskPie",
              style: TextStyle(
                fontSize: 26.0,
                fontFamily: 'Pro',
                fontWeight: FontWeight.bold,
              ), //TextStyle
            ), //Text
          ], //<Widget>[]
        ), //Column
      ), //Center
    ); //Scaffold
  }
}
