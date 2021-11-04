import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  // Map data = {};

  Future<Null> signIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // data = ModalRoute.of(context).settings.arguments;
    // // print(data);
    // final SharedPreferences prefs = data['prefs'];
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username.text);
    prefs.setString('email', email.text);
    prefs.setString('phone', phone.text);
    Navigator.pushReplacementNamed(context, '/verification');
    // Navigator.pushNamed(context, '/password');
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Let's get you started",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: 'Pro',
                      fontWeight: FontWeight.bold,
                    ), //TextStyle
                  ), //Text
                  SizedBox(height: 10.0), //SizedBox
                  Row(
                    children: <Widget>[
                      Text(
                        "Done this before?",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Pro',
                          fontWeight: FontWeight.bold,
                        ), //TextStyle
                      ), //Text
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        child: Text(
                          " Login ",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Pro',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ), //TextStyle
                        ), //Text
                      ), //FlatButton
                      Text(
                        "then!",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Pro',
                          fontWeight: FontWeight.bold,
                        ), //TextStyle
                      ), //Text
                    ], //<Widget>[]
                  ), //Row
                  SizedBox(height: 30.0), //SizedBox
                  TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pro',
                      fontWeight: FontWeight.bold,
                    ),
                    controller: username,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 5.0,
                          color: Colors.black,
                        ), //BorderSide
                      ),
                      hintText: 'What should we call you?',
                    ),
                  ), //TextField
                  SizedBox(height: 15.0), //SizedBox
                  TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pro',
                      fontWeight: FontWeight.bold,
                    ),
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 5.0,
                          color: Colors.black,
                        ), //BorderSide
                      ),
                      labelText: 'Email Address',
                    ),
                  ), //TextField
                  SizedBox(height: 10.0), //SizedBox
                  Text(
                    'This is how we will contact you 😉',
                    style: TextStyle(
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                  SizedBox(height: 15.0), //SizedBox
                  TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pro',
                      fontWeight: FontWeight.bold,
                    ),
                    controller: phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 5.0,
                          color: Colors.black,
                        ), //BorderSide
                      ),
                      labelText: 'Phone Number',
                    ),
                  ), //TextField
                  SizedBox(height: 10.0), //SizedBox
                  Text(
                    'This is how others will call you 📲',
                    style: TextStyle(
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                ], //<Widget>[]
              ), //Column
              Column(
                children: <Widget>[
                  Text(
                    "By continuing, you agree to TaskPie's Terms and Privacy Policy",
                    style: TextStyle(
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                  SizedBox(height: 10.0), //SizedBox
                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                    onPressed: () {
                      signIn();
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
