import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/method.dart';

class CertificatesDataUI extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;
  final String url;
  const CertificatesDataUI(
      { Key? key,
        required this.title,
        required this.subTitle,
        required this.duration,required this.url})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Method method = Method();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        TextButton(
          onPressed: (){
            method.launchURL(url);
          },
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22.0,
              color: Color(0xffCCD6F6),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 13.0,
            color: Color(0xffCCD6F6).withOpacity(0.5),
            fontWeight: FontWeight.w600,
          ),
        ).px8(),
        SizedBox(
          height: 6.0,
        ),
        Text(
          duration,
          style: TextStyle(
            fontSize: 12.0,
            color: Color(0xffCCD6F6).withOpacity(0.5),
            fontWeight: FontWeight.w700,
          ),
        ).px8(),
      ],
    );
  }
}
