import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/webLayout/project_card.dart';
import 'package:portfolio/webLayout/project_utils.dart';
import 'package:portfolio/webLayout/space.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/method.dart';

class ProjectsWeb extends StatefulWidget {
  const ProjectsWeb({Key? key}) : super(key: key);

  @override
  State<ProjectsWeb> createState() => _ProjectsWebState();
}

class _ProjectsWebState extends State<ProjectsWeb> {
  @override
  Widget build(BuildContext context) {
    Method method = Method();
    var size = MediaQuery.of(context).size;
    return Container(
      padding:Space.h,
      child: Column(
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child: Container(height: 1,color: Colors.grey.withOpacity(0.4),).p16()),

                Text("04. ",style: GoogleFonts.nunito(color: Colors.blue, fontSize: 28)),
                Text(
                  "Projects",
                  style: GoogleFonts.kanit(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ).pOnly(right: 60),
              ],
            ),
          ),

          Align(alignment: Alignment.centerRight, child: Container(child: Text("These are some of my works", style: GoogleFonts.poppins(fontSize: 15, color: Colors.blue),))).pOnly(right: 60),

          SizedBox(height: 10,),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing:10,
            children: ProjectUtils.banners
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(
                banner: e.value,
                projectIcon: ProjectUtils.icons[e.key],
                projectLink: ProjectUtils.links[e.key],
                projectTitle: ProjectUtils.titles[e.key],
                projectDescription: ProjectUtils.description[e.key],
              ),
            )
                .toList(),
          ),
          SizedBox(height: 20,),
          OutlinedButton(
            onPressed: () => method.launchURL("https://github.com/jayeshr28"),
            child: Text(
              'See More',
              style: GoogleFonts.poppins(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
