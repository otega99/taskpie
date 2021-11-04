import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Interests extends StatefulWidget {
  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  List<String> listOne = [
    "Laundry",
    "Errands",
    "Chores",
    "Electrical Services",
    "Carpenter",
  ];
  List<String> listTwo = [
    "House Agent",
    "Hair Stylist",
    "Coiffeur",
    "Make-up Artist",
    "Costume rental",
  ];
  List<String> listThree = [
    "Manicure Fix",
    "Pedicure Fix",
    "Fashion Consultant",
    "Event Planner",
    "Baker",
  ];
  List<String> listFour = [
    "Chef",
    "Seamstress",
    "Graphic Design"
  ];
  List<String> selectedInterests = [];
  Map interestColors = {
    "Laundry": Colors.grey[200],
    "Errands": Colors.grey[200],
    "Chores": Colors.grey[200],
    "Electrical Services": Colors.grey[200],
    "Carpenter": Colors.grey[200],
    "House Agent": Colors.grey[200],
    "Hair Stylist": Colors.grey[200],
    "Coiffeur": Colors.grey[200],
    "Make-up Artist": Colors.grey[200],
    "Costume rental": Colors.grey[200],
    "Manicure Fix": Colors.grey[200],
    "Pedicure Fix": Colors.grey[200],
    "Fashion Consultant": Colors.grey[200],
    "Event Planner": Colors.grey[200],
    "Baker": Colors.grey[200],
    "Chef": Colors.grey[200],
    "Seamstress": Colors.grey[200],
    "Graphic Design": Colors.grey[200],
  };
  Widget button = null;
  void updateInterests(interest) {
    setState(() {
      if (selectedInterests.contains(interest)) {
        interestColors[interest] = Colors.grey[200];
        selectedInterests.remove(interest);
        if (selectedInterests.length == 0) {
          button = FlatButton();
        }
      } else {
        interestColors[interest] = Colors.grey;
        selectedInterests.add(interest);
        button = FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          onPressed: () {
            Navigator.pushNamed(context, '/picture');
          },
          child: Text(
            'Setup your profile',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pro',
            ), //TextStyle
          ), //Text
          minWidth: double.maxFinite,
          color: Colors.black,
        ); //FlatButton
      }
    });
  }

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
                      Navigator.pushNamed(context, '/roles');
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
                    "Choose your interest",
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
                    "Choose the kind of offers you'd like to receive and we'll only notify 🔔 you about those.",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                  SizedBox(
                    height: 16.0,
                  ), //SizedBox
                  Text(
                    'Select at least 3 interests.',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                  SizedBox(
                    height: 16.0,
                  ), //SizedBox
                  Container(
                    height: 155,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: listOne.map((interest) {
                                return Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10.0,
                                    ), //SizedBox
                                    FlatButton(
                                      child: Text(
                                        interest,
                                        style: TextStyle(
                                          fontFamily: 'Pro',
                                        ), //TextStyle
                                      ), //Text
                                      color: interestColors[interest],
                                      onPressed: () {
                                        updateInterests(interest);
                                      },
                                    ) //FlatButton
                                  ], //<Widget>[]
                                ); //Row
                              }).toList(),
                            ), //Row
                            SizedBox(
                              height: 10.0,
                            ), //SizedBox
                            Row(
                              children: listTwo.map((interest) {
                                return Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10.0,
                                    ), //SizedBox
                                    FlatButton(
                                      child: Text(
                                        interest,
                                        style: TextStyle(
                                          fontFamily: 'Pro',
                                        ), //TextStyle
                                      ), //Text
                                      color: interestColors[interest],
                                      onPressed: () {
                                        updateInterests(interest);
                                      },
                                    ) //FlatButton
                                  ], //<Widget>[]
                                ); //Row
                              }).toList(),
                            ), //Row
                            SizedBox(
                              height: 10.0,
                            ), //SizedBox
                            Row(
                              children: listThree.map((interest) {
                                return Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10.0,
                                    ), //SizedBox
                                    FlatButton(
                                      child: Text(
                                        interest,
                                        style: TextStyle(
                                          fontFamily: 'Pro',
                                        ), //TextStyle
                                      ), //Text
                                      color: interestColors[interest],
                                      onPressed: () {
                                        updateInterests(interest);
                                      },
                                    ) //FlatButton
                                  ], //<Widget>[]
                                ); //Row
                              }).toList(),
                            ), //Row
                            SizedBox(
                              height: 10.0,
                            ), //SizedBox
                            Row(
                              children: listFour.map((interest) {
                                return Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10.0,
                                    ), //SizedBox
                                    FlatButton(
                                      child: Text(
                                        interest,
                                        style: TextStyle(
                                          fontFamily: 'Pro',
                                        ), //TextStyle
                                      ), //Text
                                      color: interestColors[interest],
                                      onPressed: () {
                                        updateInterests(interest);
                                      },
                                    ) //FlatButton
                                  ], //<Widget>[]
                                ); //Row
                              }).toList(),
                            ), //Row
                            SizedBox(
                              height: 10.0,
                            ), //SizedBox
                          ], //<Widget>[]
                        ), //Column
                      ], //<Widget>[]
                    ), //ListView
                  ), //Container
                  SizedBox(
                    height: 5.0,
                  ), //SizedBox
                  Text(
                    "No pressure, you can always change these later.",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Pro',
                      color: Colors.grey[600],
                    ), //TextStyle
                  ), //Text
                ], //<Widget>
              ), //Column
              Column(
                children: <Widget>[
                  SizedBox(
                    child: button,
                  ), //SizedBox
                  SizedBox(
                    height: 10.0,
                  ), //SizedBox
                  Text(
                    "Nobody likes spam, and we are no different.😎",
                    style: TextStyle(
                      fontFamily: 'Pro',
                    ), //TextStyle
                  ), //Text
                  SizedBox(
                    height: 10.0,
                  ), //SizedBox
                  StepProgressIndicator(
                    totalSteps: 3,
                    currentStep: 2,
                    selectedColor: Colors.black,
                  ), //StepProgressIndicator
                ], //<Widget>
              ), //Column
            ], //<Widget>
          ), //Column
        ), //Padding
      ), //Container
    ); //Scaffold
  }
}
