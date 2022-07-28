import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/webLayout/space.dart';
import '../models/method.dart';
import 'dimensions_util.dart';


class ProjectCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard({Key? key, this.banner, this.projectLink, this.projectIcon,required this.projectTitle,required this.projectDescription, this.projectIconData}) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override

  void initState() {



    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    Method method = Method();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: (){
        method.launchURL(widget.projectLink!);
      },
      onHover: (isHovering){
        if(isHovering==true){
          setState(() {
            isHover = true;
          });}
        },
      child: Container(
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(10),
        width: 370,
        height: 250,
    decoration: BoxDecoration(
        color: Colors.grey[900] ,
        borderRadius: BorderRadius.circular(10),
        boxShadow: isHover?
          [BoxShadow(color: Colors.black38, blurRadius: 10,offset: const Offset(0.0, 0.0),)]
          :[BoxShadow(color: Colors.indigo, blurRadius: 10,offset: const Offset(0.0, 0.0),)],
      ),
        child: isHover?Stack(
          fit: StackFit.expand,
          children: [
            Container(color: Colors.blue,)
          ],
        ):
            Stack(
              fit: StackFit.expand,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 400),
                      opacity: isHover ? 0.0 : 1.0,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: widget.banner != null
                            ? Image.asset(
                          widget.banner!,
                        )
                            : Container(),
                      ),
                    ),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.projectIcon != null
                  ? (width > 1135 || width < 950)
                  ? Image.asset(
                widget.projectIcon!,
                height: height * 0.05,
              )
                  : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    widget.projectIcon!,
                    height: height * 0.03,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    widget.projectTitle,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
                  : Container(),
              widget.projectIconData != null
                  ? Icon(
                widget.projectIconData,
                color: Colors.blue,
                size: height * 0.1,
              )
                  : Container(),
              (width > 1135 || width < 950)
                  ? SizedBox(
                height: height * 0.02,
              )
                  : const SizedBox(),
              (width > 1135 || width < 950)
                  ? Text(
                widget.projectTitle,
                style: TextStyle(fontSize: 10, color: Colors.white),
                textAlign: TextAlign.center,
              )
                  : Container(),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                widget.projectDescription,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(color: Colors.white),
              ),
              SizedBox(
                height: height * 0.01,
              ),
            ],
          ),

                  ],
            )
      ),
    );
  }
}
