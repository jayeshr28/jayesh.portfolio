import 'package:flutter/material.dart';
import 'package:portfolio/animations/splash.dart';

class ImageRotate extends StatefulWidget {

  @override
  _ImageRotateState createState() => _ImageRotateState();

}

class _ImageRotateState extends State<ImageRotate>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;



  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 7),
    );

    animationController.repeat();
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        child:  IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.ac_unit),
          color: Colors.lightBlueAccent,
          iconSize: 38,
        ),
        builder: (context, _widget) {
          return Transform.rotate(
            angle: animationController.value * 6.3,
            child: _widget,
          );
        },

    );
  }
}