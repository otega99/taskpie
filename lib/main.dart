import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:taskpie/views/home.dart';
import 'package:taskpie/views/signup.dart';
import 'package:taskpie/views/description.dart';
import 'package:taskpie/views/verification.dart';
import 'package:taskpie/views/password.dart';
import 'package:taskpie/views/created.dart';
import 'package:taskpie/views/profile_picture.dart';
import 'package:taskpie/views/roles.dart';
import 'package:taskpie/views/interests.dart';
import 'package:taskpie/views/notifications.dart';
import 'package:taskpie/views/login.dart';
import 'package:taskpie/views/forgot_password.dart';
import 'package:taskpie/views/user_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return new MaterialApp(initialRoute: '/home', routes: {
      '/home': (context) => Home(),
      '/signup': (context) => SignUp(),
      '/description': (context) => Description(),
      '/verification': (context) => Verification(),
      '/password': (context) => Password(),
      '/created': (context) => Created(),
      '/picture': (context) => ProfilePicture(),
      '/roles': (context) => Roles(),
      '/interests': (context) => Interests(),
      '/notifications': (context) => Notifications(),
      '/login': (context) => Login(),
      '/forgot': (context) => ForgotPassword(),
      '/user': (context) => UserPage(),
    });
  }
}
