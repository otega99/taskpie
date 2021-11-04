import 'package:flutter/material.dart';
import 'package:password_strength/password_strength.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  int strength = 0;
  Color color = Colors.black;
  int firstValue = 0;
  int secondValue = 0;
  int thirdValue = 0;
  TextEditingController password_controller = TextEditingController();

  void getColor(value) {
    if (value <= 0.25) {
      color = Colors.red;
    } else if (value > 0.25 && value <= 0.5) {
      color = Colors.yellow;
    } else if (value > 0.5 && value <= 0.75) {
      color = Colors.blue;
    } else {
      color = Colors.green;
    }
  }

  void checkRequirements(password) {
    if (password.length >= 8) {
      firstValue = 1;
    }
    for (var i = 0; i < password.length; i++) {
      RegExp regEx = new RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+");
      if (regEx.hasMatch(password)) {
        secondValue = 1;
      }
    }
    for (var i = 0; i < password.length; i++) {
      if (password[i].contains(new RegExp(r'[0-9]'))) {
        thirdValue = 1;
      }
    }
  }

  void checkPassword(password) {
    double value = estimatePasswordStrength(password);
    setState(() {
      if (value < 0.1 && value > 0) {
        value = 0.1;
      } else if (value > 0.75) {
        value = 1;
      }
      getColor(value);
      strength = (value * 6).round();
      checkRequirements(password);
    });
  }

  Future<Null> completeSignIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('password', password_controller.text);
    final String username = prefs.getString('username');
    final String email = prefs.getString('email');
    final String phone = prefs.getString('phone');
    final String password = prefs.getString('password');
    Navigator.pushNamed(context, '/created');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 75.0, 15.0, 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Create a secure password",
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
                    "Avoid passwords that you might use with other websites or that may be easy for someone else to guess.",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text,
                  SizedBox(
                    height: 20.0,
                  ), //SizedBox
                  TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pro',
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: true,
                      controller: password_controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 5.0,
                            color: Colors.black,
                          ), //BorderSide
                        ),
                        hintText: 'Password',
                      ),
                      onChanged: (text) {
                        checkPassword(text);
                      }), //TextField
                  SizedBox(
                    height: 5.0,
                  ), //SizedBox
                  StepProgressIndicator(
                    totalSteps: 6,
                    currentStep: strength,
                    selectedColor: color,
                  ), //StepProgressIndicator
                  SizedBox(
                    height: 20.0,
                  ), //SizedBox
                  Text(
                    "To ensure you create a secure password, we recommend you have",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                  SizedBox(
                    height: 20.0,
                  ), //SizedBox
                  Row(
                    children: <Widget>[
                      SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: Radio(
                            value: 1,
                            groupValue: firstValue,
                          )), //SizedBox
                      SizedBox(
                        height: 20.0,
                        width: 10.0,
                      ), //SizedBox

                      Text("8 or more characters",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Pro',
                          ) //TextStyle
                          ) //Text
                    ], //<Widget>[]
                  ), //Row
                  SizedBox(
                    height: 15.0,
                  ), //SizedBox
                  Row(
                    children: <Widget>[
                      SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: Radio(
                            value: 1,
                            groupValue: secondValue,
                          )), //SizedBox
                      SizedBox(
                        height: 20.0,
                        width: 10.0,
                      ), //SizedBox
                      Text("Upper and lowercase characters",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Pro',
                          ) //TextStyle
                          ) //Text
                    ], //<Widget>[]
                  ), //Row
                  SizedBox(
                    height: 15.0,
                  ), //SizedBox
                  Row(
                    children: <Widget>[
                      SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: Radio(
                            value: 1,
                            groupValue: thirdValue,
                          )), //SizedBox
                      SizedBox(
                        height: 20.0,
                        width: 10.0,
                      ), //SizedBox

                      Text("At least one number",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Pro',
                          ) //TextStyle
                          ) //Text
                    ], //<Widget>[]
                  ), //Row
                ], //<Widget>[]
              ), //Column
              Column(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                    onPressed: () {
                      completeSignIn();
                    },
                    child: Text(
                      'Create Account',
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
