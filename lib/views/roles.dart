import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Roles extends StatefulWidget {
  @override
  _RolesState createState() => _RolesState();
}

class _RolesState extends State<Roles> {
  Color bakerButtonColor = Colors.grey[200];
  Color customButtonColor = Colors.grey[200];

  bool isBaker = false;
  String text = "Next";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/created');
                    },
                    icon: Icon(
                      Icons.arrow_back,
                    ), //Icon
                    padding: EdgeInsets.all(0.0),
                  ), //IconButton
                  SizedBox(
                    height: 30.0,
                  ), //SizedBox
                  Text(
                    "What would you like to do on TaskPie?",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Pro',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ), //TextStyle
                  ), //Text
                  SizedBox(
                    height: 16.0,
                  ), //SizedBox
                  Text(
                    "Choose the role that best describes what you want to do. Feel free to select all.",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                  SizedBox(
                    height: 16.0,
                  ), //SizedBox
                  FlatButton(
                    padding: EdgeInsets.all(20.0),
                    onPressed: () {
                      setState(() {
                        if (customButtonColor == Colors.grey[200]) {
                          customButtonColor = Colors.grey[400];
                        } else {
                          customButtonColor = Colors.grey[200];
                        }
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Customer",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Pro',
                              ), //TextStyle
                            ), //Text
                            Text(
                              "Sends out task requests",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Pro',
                              ), //TextStyle
                            ), //Text
                          ], //<Widget>[]
                        ), //Column
                      ], //<Widget>[]
                    ), //Row
                    minWidth: double.maxFinite,
                    color: customButtonColor,
                  ), //FlatButton
                  SizedBox(
                    height: 16.0,
                  ), //SizedBox
                  FlatButton(
                    padding: EdgeInsets.all(20.0),
                    onPressed: () {
                      setState(() {
                        if (bakerButtonColor == Colors.grey[200]) {
                          bakerButtonColor = Colors.grey[400];
                          text = "Choose your interest";
                        } else {
                          bakerButtonColor = Colors.grey[200];
                          text = "Next";
                        }
                        isBaker = true;
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Baker",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Pro',
                              ), //TextStyle
                            ), //Text
                            Text(
                              "Recieves and carries out tasks",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Pro',
                              ), //TextStyle
                            ), //Text
                          ], //<Widget>[]
                        ), //Column
                      ], //<Widget>[]
                    ), //Row
                    minWidth: double.maxFinite,
                    color: bakerButtonColor,
                  ), //FlatButton
                  SizedBox(
                    height: 16.0,
                  ), //SizedBox
                  Text(
                    "No pressure, you can always change these later.",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Pro',
                      color: Colors.grey[600],
                    ), //TextStyle
                  ), //Text
                ], //<Widget>[]
              ), //Column
              Column(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                    onPressed: () {
                      if (isBaker) {
                        Navigator.pushNamed(context, '/interests');
                      } else {
                        Navigator.pushReplacementNamed(context, '/user');
                      }
                    },
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Pro',
                      ), //TextStyle
                    ), //Text
                    minWidth: double.maxFinite,
                    color: Colors.black,
                  ), //FlatButton
                  SizedBox(
                    height: 10.0,
                  ), //SizedBox
                  StepProgressIndicator(
                    totalSteps: 3,
                    currentStep: 1,
                    selectedColor: Colors.black,
                  ), //StepProgressIndicator
                ], //<Widget>[]
              ), //Column
            ], //<Widget>[]
          ), //Column
        ), //Padding
      ), //Container
    ); //Scaffold
  }
}
