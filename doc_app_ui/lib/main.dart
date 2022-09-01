import 'package:doc_app_ui/screen/consultation_formate_page.dart';
import 'package:doc_app_ui/screen/doctors_page.dart';
import 'package:doc_app_ui/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doc-Online',
      theme: ThemeData(
        fontFamily: 'Gilroy',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
