import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/method.dart';

class LeftSocials extends StatelessWidget {

  const LeftSocials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    var size = MediaQuery.of(context).size;

    return  Container(
      width: size.width * 0.09,
      height: size.height - 82,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              icon: FaIcon(FontAwesomeIcons.github),
              color: Color(0xffffA8B2D1),
              iconSize: 16.0,
              hoverColor: Color(0xFF8E24AA),
              onPressed: () {
                method.launchURL("https://github.com/jayeshr28");
              }),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.twitter),
              color: Color(0xffffA8B2D1),
              iconSize: 16.0,
              hoverColor: Color(0xFF8E24AA),
              onPressed: () {
                method.launchURL("https://twitter.com/");
              }),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.linkedin),
            color: Color(0xffffA8B2D1),
            hoverColor: Color(0xFF8E24AA),
            onPressed: () {
              method.launchURL(
                  "https://www.linkedin.com/in/jayesh-rathore-b3b27022a/");
            },
            iconSize: 16.0,
          ),
          IconButton(
              icon: FaIcon(Icons.call),
              color: Color(0xffffA8B2D1),
              hoverColor: Color(0xFF8E24AA),
              iconSize: 16.0,
              onPressed: () {
                method.launchCaller();
              }),
          IconButton(
              icon: FaIcon(Icons.mail),
              hoverColor: Color(0xFF8E24AA),
              color: Color(0xffffA8B2D1),
              iconSize: 16.0,
              onPressed: () {
                method.launchEmail();
              }),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              height: size.height * 0.20,
              width: 2,
              color: Colors.grey.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
