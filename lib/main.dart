import 'package:flutter/material.dart';
import 'package:solution/pages/HomePage.dart';
import 'package:solution/pages/Splash.dart';
import 'package:solution/pages/Square.dart';
import 'package:solution/pages/calculator.dart';
import 'package:solution/pages/calculator/Calculate.dart';
import 'package:solution/pages/circle.dart';
import 'package:solution/pages/interest.dart';
import 'package:solution/pages/rectangle.dart';
import 'package:solution/pages/tempConvert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        "/": (_) => Splash(),
        "/homepage": (_) => HomePage(),
        "/calculator": (_) => Calculator(),
        "/circle": (_) => Circle(),
        "/interest": (_) => Interest(),
        "/rectangle": (_) => Rectangle(),
        "/temperature": (_) => Temperature(),
        "/square": (_) => Square(),
        "/calculate": (_) => Calculate(),
      },
    );
  }
}
