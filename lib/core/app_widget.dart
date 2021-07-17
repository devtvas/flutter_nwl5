// import 'package:devquiz/challenge/challenge_page.dart';
import 'package:devquiz/home/home_page.dart';
// import 'package:devquiz/home/home_page.dart';
// import 'package:devquiz/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = "DevQuiz";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      key: key,
      title: title,
      home: new HomePage(
        key: key,
      ),
    );
  }
}
