import 'dart:math';
import 'dart:ui';

import 'package:doc_app_ui/screen/doctors_page.dart';
import 'package:doc_app_ui/widgets/colors_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          elevation: 0,
          backgroundColor: background_color,
          leading: Icon(
            Icons.menu,
            color: textcolor,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Text(
                  "Nancy Lawrance",
                  style: TextStyle(
                      color: textcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: textcolor,
                      size: 14,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Los Angeles, US",
                      style: TextStyle(color: textcolor, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 16, bottom: 18),
              child: Container(
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: bordercolor),
                ),
                child: Container(
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1442328166075-47fe7153c128?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                          fit: BoxFit.cover)),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(32),
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose format",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(
                          Colors.grey.withOpacity(0.8)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: textcolor,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          spreadRadius: 5,
                          offset: Offset(0, 5),
                          color: Colors.grey.withOpacity(0.2)),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Online",
                      style: TextStyle(
                          color: textcolor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Consultation",
                      style: TextStyle(
                          color: textcolor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: selection_color,
                      child: Icon(
                        Icons.mobile_friendly_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Starting from \$50',
                      style: TextStyle(
                          color: selection_color,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DoctorsPage()));
                      },
                      child: Container(
                        width: 220,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: selection_color,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Find Doctor',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          spreadRadius: 5,
                          offset: Offset(0, 5),
                          color: Colors.grey.withOpacity(0.2)),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Visit a",
                      style: TextStyle(
                          color: textcolor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Doctor",
                      style: TextStyle(
                          color: textcolor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: button_color,
                      child: Icon(
                        Icons.book_online_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Starting from \$50',
                      style: TextStyle(
                          color: button_color,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DoctorsPage()));
                      },
                      child: Container(
                        width: 220,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: button_color,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Book Appointment',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
