import 'package:flutter/material.dart';
import 'package:portfolio/animations/splash.dart';
import 'package:portfolio/home/mobile_home_page.dart';
import 'package:portfolio/home/web_homepage.dart';

import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jayesh.Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // home: SplashScreen(),
      home: SplashScreen(),
    );
  }
}
