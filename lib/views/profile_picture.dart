import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProfilePicture extends StatefulWidget {
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
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
                      Navigator.pushNamed(context, '/interests');
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
                    "Add a profile picture",
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
                    "Use a picture that clearly show your face so others can identify you easily.",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                  SizedBox(
                    height: 15.0,
                  ), //SizedBox
                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil('/user', (Route<dynamic> route) => false);
                    },
                    child: Text(
                      'Select Picture',
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
              Column(
                children: <Widget>[
                  StepProgressIndicator(
                    totalSteps: 3,
                    currentStep: 3,
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
