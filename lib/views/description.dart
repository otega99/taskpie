import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  int step = 1;

  var _controller = ScrollController();

  // Map data = {};
  // Future<Null> login(data) async {
  //   data = ModalRoute.of(context).settings.arguments;
  //   final SharedPreferences prefs = data['prefs'];
  //   Navigator.pushReplacementNamed(context, '/login');
  // }

  // Future<Null> signUp(data) async {
  //   data = ModalRoute.of(context).settings.arguments;
  //   final SharedPreferences prefs = data['prefs'];

  // }

  @override
  void initState() {
    super.initState();
    // Setup the listener.
    _controller.addListener(() {
      if (_controller.position.atEdge) {
        if (_controller.position.pixels == 0) {
          // You're at the top.
          setState(() {
            step = 1;
          });
        } else {
          // You're at the bottom.
          setState(() {
            step = 2;
          });
        }
      }
    });
  }

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
                  children: <Widget>[
                    Container(
                      height: 300,
                      child: ListView(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          SizedBox(
                              width: 320.0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 0.0,
                                  horizontal: 40.0,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Ask and you shall receive!",
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Pro',
                                      ), //TextStyle
                                    ), //Text
                                    SizedBox(
                                      height: 10.0,
                                    ), //SizedBox
                                    Text(
                                      "Need something done for you? There's always someone available to help.",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: 'Pro',
                                      ), //TextStyle
                                    ), //Text
                                    SizedBox(
                                      height: 20.0,
                                    ), //SizedBox
                                    Text(
                                      "Focus on what's most important",
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Pro',
                                      ), //TextStyle
                                    ), //Text
                                    SizedBox(
                                      height: 10.0,
                                    ), //SizedBox
                                    Text(
                                      "Get help, where and whenever you need it.",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: 'Pro',
                                      ), //TextStyle
                                    ), //Text
                                  ], //<Widget>[]
                                ), //Column
                              ) //Padding
                              ), //SizedBox
                          SizedBox(
                            width: 320.0,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "There's enough room for you",
                                    style: TextStyle(
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Pro',
                                    ), //TextStyle
                                  ), //Text
                                  SizedBox(
                                    height: 10.0,
                                  ), //SizedBox
                                  Text(
                                    "Your time,your schedule - there's alwas room in our kitchen for a willing helper",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'Pro',
                                    ), //TextStyle
                                  ), //Text
                                  SizedBox(
                                    height: 20.0,
                                  ), //SizedBox
                                  Text(
                                    "Earn doing what you love",
                                    style: TextStyle(
                                      fontSize: 28.0,
                                      fontFamily: 'Pro',
                                      fontWeight: FontWeight.bold,
                                    ), //TextStyle
                                  ), //Text
                                  SizedBox(
                                    height: 10.0,
                                  ), //SizedBox
                                  Text(
                                    "Find tasks that fit your skills and get paid for completing them.",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'Pro',
                                    ), //TextStyle
                                  ), //Text
                                ], //<Widget>[]
                              ), //Column
                            ), //Padding
                          ), //SizedBox
                        ], //<Widget>[]
                      ), //ListView
                    ), //Container
                  ], //<Widget>[]
                ), //Column
                Column(
                  children: <Widget>[
                    FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/signup');
                      },
                      child: Text(
                        'Get me started 🔥',
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
                    FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text(
                        'I have an account',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Pro',
                        ), //TextStyle
                      ), //Text
                      minWidth: double.maxFinite,
                      color: Colors.grey[300],
                    ), //FlatButton
                    SizedBox(
                      height: 30.0,
                    ), //SizedBox
                    StepProgressIndicator(
                      totalSteps: 2,
                      currentStep: step,
                      selectedColor: Colors.black,
                    ), //StepProgressIndicator
                  ], //<Widget>[]
                ), //Column
              ], //<Widget>[]
            ) //Column
            ), //Padding
      ), //Container
    ); //Scaffold
  }
}
