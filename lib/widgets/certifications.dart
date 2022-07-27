import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/certificateBox.dart';
import 'package:velocity_x/velocity_x.dart';

class CertificationWeb extends StatelessWidget {
  const CertificationWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Container(
      child:Column(

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("03. ",style: GoogleFonts.nunito(color: Colors.blue, fontSize: 28)),
              Text(
                "Certifications",
                style: GoogleFonts.kanit(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ).pOnly(right: 40),
              Expanded(child: Divider(thickness: 1,color: Colors.grey,).p16()),
            ],
          ),

        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  height: size.height * 0.8,
                  child: Stack(
                    children: [
                      Center(
                        child: VerticalDivider(
                          color: Color(0xff64FFDA),
                          thickness: 1.75,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Container(
                        child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  child: FaIcon(FontAwesomeIcons.fire,
                                      color: Colors.white),
                                ),

                                CircleAvatar(
                                  backgroundColor: Colors.brown,
                                  child: FaIcon(FontAwesomeIcons.code,
                                      color: Colors.white),
                                ),

                                CircleAvatar(
                                  backgroundColor: Colors.deepPurple,
                                  child: FaIcon(FontAwesomeIcons.store,
                                      color: Colors.white),
                                ),
                              ],
                            )),
                      )
                    ],
                  )),
            ),

            Expanded(
                flex: 4,
                child: Container(
                  height: size.height * 0.8,
                  child: CertificateBox(),
                ))
      ]
    ),

        ],
      )
    );
  }
}
