import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/skills.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutMeWeb extends StatelessWidget {
  const AboutMeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return
       Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(child: Container(height: 1,color: Colors.grey.withOpacity(0.4),).p16()),

                    Text("02. ",style: GoogleFonts.nunito(color: Colors.blue, fontSize: 28)),
                    Text(
                      "About Me",
                      style: GoogleFonts.kanit(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ).pOnly(right: 60),
                  ],
                ),
              ),

               Wrap(
                 children: [
                   Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          child: Image.asset("assets/images/pic.jpg",
                            // width: size.width*0.24,
                              height: size.width < 1300
                                  ? size.height * 0.65
                                  : size.height * 0.75).px12(),
                        ),
                        Spacer(),


                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                                const SizedBox(
                                  height: 20,
                                  ),
                                Text(
                                  "Who am I?",
                                  style: GoogleFonts.kellySlab(
                                    fontSize: 18,
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                            const SizedBox(height: 10,),

                                Text("I'm Jayesh Rathore", style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 29,
                                    fontWeight: FontWeight.bold
                                ),),

                             Container(
                               width: size.width*0.45,
                               child: Wrap(
                                 children: [Text("A Flutter Developer, UI designer, Front-End Developer", style: GoogleFonts.ptSans(
                                      color: Colors.white,
                                      fontSize: 21, 
                                    ),),
                                   const SizedBox(height: 20,),
                             ]  ),
                             ),



                                Container(
                                  width: size.width*0.45,

                                  child: Wrap(
                                    children: [
                                      Text("I'm a Third year Student at Vellore Institute of Technology, with Computer Science as major. I have been learning and developing mobile applications from past 1 year specializing in android and recently learnt about Flutter Framework. I am a beginner in Front-End Development and also have some knowledge about Google Cloud. Currently, I am searching for internships in Flutter Development. Other than technical experience I have achieved Pre-Rashtrapati Puruskar in Bharat Scout and Guide."
                                          , style: GoogleFonts.poppins(
                                          color: Colors.white60,
                                           fontSize: 15,

                                        ),
                                      textAlign: TextAlign.justify,).py2(),
                                    ],
                                  ),
                                ).py2(),

                            const SizedBox(height: 20,),
                                Container(
                                  height: 1,
                                  width: size.width*0.45,
                                  color: Colors.grey.withOpacity(0.7),

                                ),

                            const SizedBox(height: 15,),
                            Container(
                              child: Text(
                                "Technologies I have been working with Recently:",
                                style: GoogleFonts.nunito(
                                  color: Colors.lightBlueAccent,
                                  fontSize: 15,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),

                            const SizedBox(height: 10,),
                            Container(
                              // width: size.width*0.4,
                              child: Wrap(
                                children: [Row(
                                  children: const [
                                    Skills(text: "Dart"),
                                    Skills(text: "Kotlin"),
                                    Skills(text: "Java"),
                                    Skills(text: "C/C++"),
                                    Skills(text: "Jetpack Compose"),
                                    Skills(text: "Firebase")
                                  ],
                                ),]
                              ),
                            ),

                            const SizedBox(height: 20,),
                            Container(
                              height: 1,
                              width: size.width*0.45,
                              color: Colors.grey.withOpacity(0.7),
                            ),

                            const SizedBox(height: 20,),
                            Container(
                              width: size.width*0.4,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Name : Jayesh Rathore", style: TextStyle(fontSize: 13, color: Colors.white)).p4(),
                                      Text("Age : 19", style: TextStyle(fontSize: 13, color: Colors.white),).p4()
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Email : jayeshrathore2810@gmail.com", style: TextStyle(fontSize: 13, color: Colors.white)).p4(),
                                      Text("From : Indore,MP(INDIA)", style: TextStyle(fontSize: 13, color: Colors.white),).p4()
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 35,),
                            Container(
                              width: size.width*0.45,
                              child: Row(
                                children: [
                                  TextButton(onPressed: (){}, child: Text("Resume", style: GoogleFonts.ptSans(color: Colors.green, fontWeight: FontWeight.bold),)),
                                  Expanded(child: Divider(thickness: 1,color: Colors.grey,indent: 1,)),
                                  Image.asset("images/cloud.png",width: size.width*0.11,height: 65 ),
                                  Image.asset("images/flutttter.png",width: size.width*0.08, height: 65 ),
                                  Image.asset("images/andstudio.png",width: size.width*0.08, height: 65),


                                ],
                              ),
                            )

                          ],
                        ).p32()
                      ],
                    ),
                 ],
               ),



            ],
          ),

      );
  }
}
