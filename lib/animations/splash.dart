import 'package:flutter/material.dart';
import 'package:portfolio/animations/rotate_icon.dart';
import 'package:portfolio/home/web_homepage.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _homeScreen();
  }

  _homeScreen() async{
    await Future.delayed(Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WebHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child:Container(
          child: ImageRotate()
        ),
      ),
    );
  }
}
