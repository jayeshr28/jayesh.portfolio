import 'package:flutter/material.dart';

class WebBarTile extends StatelessWidget {
  final String text;
  const WebBarTile({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        "$text",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.0,
          letterSpacing: 3.0,
          color: Colors.lightBlueAccent,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
