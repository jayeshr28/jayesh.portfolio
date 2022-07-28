import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/skills.dart';

class AboutMeMob extends StatelessWidget {
  const AboutMeMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container(height: size.height*0.1,),

          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.grey.withOpacity(0.4),
                  ).p16(),
                ),
                Text(
                  "About Me",
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.grey.withOpacity(0.4),
                  ).p16(),
                ),
              ],
            ),


          ).py16(),

          Container(height:20),
          CircleAvatar(child: Image.asset('assets/images/pic.jpg'),radius: 120),
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
                // width: size.width*0.8,


                child: Text("A Flutter Developer, UI designer, Front-End Developer", style: GoogleFonts.ptSans(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                textAlign: TextAlign.center,),

                      ),



              const SizedBox(height: 20,),
              Container(
                // width: size.width*0.45,

                child: Wrap(
                  children: [
                    Text("I'm a Third year Student at Vellore Institute of Technology, with Computer Science as major. I have been learning and developing mobile applications from past 1 year specializing in android and recently learnt about Flutter Framework. I am a beginner in Front-End Development and also have some knowledge about Google Cloud. Currently, I am searching for internships in Flutter Development. Other than technical experience I have achieved Pre-Rashtrapati Puruskar in Bharat Scout and Guide."
                      , style: GoogleFonts.poppins(
                        color: Colors.white60,
                        fontSize: 14,

                      ),
                      textAlign: TextAlign.justify,).py2(),
                  ],
                ),
              ).py2(),

              const SizedBox(height: 20,),
              Container(
                height: 1,
                // width: size.width*0.45,
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    Column(
                      children: [
                        Skills(text: "Dart"),
                        Skills(text: "Kotlin"),
                        Skills(text: "Java"),
                      ],
                    ),
                    Column(
                      children: [
                        Skills(text: "C/C++"),
                        Skills(text: "Jetpack Compose"),
                        Skills(text: "Firebase")
                      ],
                    )

                  ],
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                height: 1,
                // width: size.width*0.45,
                color: Colors.grey.withOpacity(0.7),
              ),

              const SizedBox(height: 20,),
              Container(
                // width: size.width*0.4,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name : Jayesh Rathore", style: TextStyle(fontSize: 13, color: Colors.white)).p4(),
                        Text("Email : jayeshrathore2810@gmail.com", style: TextStyle(fontSize: 13, color: Colors.white),).p4()
                      ],
                    ),

                  ],
                ),
              ),

              SizedBox(height: 35,),
              Container(
                width: size.width*0.45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    TextButton(onPressed: (){}, child: Text("Resume", style: GoogleFonts.ptSans(color: Colors.green, fontWeight: FontWeight.bold),)),
                    Expanded(child: Divider(thickness: 1,color: Colors.grey,indent: 1,)),

                     Expanded(child: Image.asset('assets/images/cloud.png',height: 65 )),
                     Expanded(child:Image.asset('assets/images/flutttter.png', height: 65 ),),
                     Expanded(child:Image.asset('assets/images/andstudio.png', height: 65),)


                  ],
                ),
              )


        ]));
  }
}
