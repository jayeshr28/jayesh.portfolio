import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  final String text;
  const Skills({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children: [
          Icon(Icons.flutter_dash_outlined, color: Colors.lightBlue,size: MediaQuery.of(context).size.width<1400?15:20,).px4(),
          Text(text, style: GoogleFonts.titilliumWeb(color: Colors.white, fontSize: MediaQuery.of(context).size.width<1500?12:15, fontWeight: FontWeight.bold)),
          SizedBox(width: MediaQuery.of(context).size.height*0.02,),
        ],
      )

    );
  }
}
