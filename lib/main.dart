import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:superboysteve/homepage.dart';

Color b = Color(0xFFB0c0e0c);
Color r = Color(0xFFBd8323c);
Color w = Color(0xFFBeaebea);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'superboy steve',
      theme: ThemeData(
        fontFamily: "radhiumz",
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: const MyHomePage(title: 'main'),
      home: HomePage(),
    );
  }
}

class Temp extends StatelessWidget {
  const Temp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text('Working'),
    ));
  }
}
