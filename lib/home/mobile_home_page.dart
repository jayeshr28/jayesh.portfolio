import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/about/about_mob.dart';
import 'package:portfolio/webLayout/contact_web.dart';
import 'package:portfolio/widgets/certifications.dart';
import 'package:portfolio/widgets/contacts_mob.dart';
import 'package:portfolio/widgets/get_in_touch.dart';
import 'package:portfolio/widgets/resume_card.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:velocity_x/velocity_x.dart';

import '../animations/entrance_fader.dart';
import '../animations/rotate_icon.dart';
import '../models/method.dart';
import '../webLayout/projects_mob.dart';
import '../webLayout/projects_web.dart';
import '../widgets/left_socials.dart';

class HomePageMob extends StatefulWidget {
  const HomePageMob({Key? key}) : super(key: key);

  @override
  State<HomePageMob> createState() => _HomePageMobState();
}

class _HomePageMobState extends State<HomePageMob> {
  late AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpand = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpand != false
                ? setState(
                    () {
                      isExpand = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpand != true
                ? setState(() {
                    print('setState is called');
                    isExpand = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xff000026),
          body: SingleChildScrollView(
              physics: ScrollPhysics(),
              primary: true,
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  height: size.height * 0.14,
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ImageRotate(),
                          // Spacer(),
                          Expanded(
                              child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6.0),
                                  child: DefaultTabController(
                                      animationDuration: Duration(milliseconds: 1500),
                                      length: 5,
                                      child: TabBar(
                                          indicatorColor: Colors.transparent,
                                          labelColor: Colors.lightBlueAccent,

                                          onTap: (index) async {
                                            _scrollToIndex(index);
                                          },
                                          tabs:const [
                                            Tab(
                                              icon:  FaIcon(
                                                  FontAwesomeIcons.home,
                                                  // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                                ),

                                            ),


                                            Tab(
                                              icon: FaIcon(
                                                    FontAwesomeIcons.userGraduate,
                                                    // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                              ),
                                            ),
                                            Tab(
                                              icon:  FaIcon(
                                                  FontAwesomeIcons.laptopCode,
                                                  // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                                ),

                                            ),
                                            Tab(
                                              icon:  FaIcon(
                                                FontAwesomeIcons.play,
                                                // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                              ),

                                            ),
                                            Tab(
                                              icon:FaIcon(
                                                  FontAwesomeIcons.at,
                                                  // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                                ),
                                            ),
                                          ])))),
                          // ResumeCard(),
                        ]),
                  ),
                ),
                Row(children: [
                                    //all widgets
                  Expanded(
                    child: Container(
                        height: size.height - 82,
                        width: size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CustomScrollView(
                            controller: _autoScrollController,
                            slivers: [
                              SliverList(
                                  delegate: SliverChildListDelegate([
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                            
                                    children: [
                                      //home abt me
                                      _wrapScrollTag(
                                        index:0,
                                        child: Stack(
                                          children: [
                                            //image
                                            Positioned(
                                              bottom: 0,
                                              right: -50,
                                              // width: size.width * 0.4,
                                              child: Opacity(
                                                opacity: size.width<600?0.3:0.7,
                                                child: EntranceFader(
                                                  offset:  Offset(0, 0),
                                                  delay:  Duration(seconds: 1),
                                                  duration:  Duration(
                                                      milliseconds: 800),
                                                  child: Image(image:  AssetImage(
                                                    'assets/images/photo1.png',

                                                  ),
                                                      height: size.width<600
                                                          ?size.height * 0.5
                                                          :size.height*0.7,)

                                                ),
                                              ),
                                            ),
                                            //image end

                                            Spacer(),
                                            //written info
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: size.height * 0.06),
                                                SizedBox(
                                                  height: 60,
                                                  child: DefaultTextStyle(
                                                    style: GoogleFonts.robotoMono(
                                                      fontSize: size.width<300?15.0:20.0,
                                                      color: Colors.white,
                                                    ),
                                                    child: AnimatedTextKit(
                                                      animatedTexts: [
                                                        TypewriterAnimatedText(
                                                            "Hi, Welcome To My Portfolio",
                                                            speed: Duration(
                                                                milliseconds: 150)),
                                                      ],
                                                      isRepeatingAnimation: false,
                                                    ),
                                                  ),
                                                ).py2(),
                                                const SizedBox(height: 6.0),
                                                Text(
                                                  "Jayesh Rathore",
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 70,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                const SizedBox(height: 10.0),
                                                SizedBox(
                                                  height: 40,
                                                  child: DefaultTextStyle(
                                                    style: GoogleFonts.kanit(
                                                      fontSize: 25.0,
                                                      color: Colors.white,
                                                    ),
                                                    child: AnimatedTextKit(
                                                      animatedTexts: [
                                                        FadeAnimatedText(
                                                            "Flutter Developer", duration: Duration(seconds: 1)),
                                                        FadeAnimatedText(
                                                            "UI/UX Developer", duration: Duration(seconds: 1)),
                                                        FadeAnimatedText(
                                                            "Front-End Developer", duration: Duration(seconds: 1)),
                                                        FadeAnimatedText(
                                                            "A Friend :)", duration: Duration(seconds: 1)),
                                                      ],
                                                      repeatForever: true,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 6.0),

                                                Wrap(children: [
                                                  Container(
                                                    width: size.width * 0.6,
                                                    child: size.width>600?Text(
                                                      'I am a 3rd year Student currently persuing B.tech from VIT Bhopal, \nand specializing in building(occasionally designing) exceptional websites, applications, \nand love to play with trending internet stuffs ',
                                                      style: GoogleFonts.robotoMono(
                                                        fontSize: 15,
                                                        color: Colors.white60,
                                                      ),
                                                    ):
                                                    Expanded(
                                                      child: Row(
                                                        children:[
                                                          IconButton(
                                                              icon: FaIcon(FontAwesomeIcons.github),
                                                              color: Color(0xffffA8B2D1),
                                                              iconSize: 26.0,
                                                              hoverColor: Color(0xFF8E24AA),
                                                              onPressed: () {
                                                                method.launchURL("https://github.com/jayeshr28");
                                                              }),


                                                          IconButton(
                                                            icon: FaIcon(FontAwesomeIcons.linkedin),
                                                            color: Color(0xffffA8B2D1),
                                                            hoverColor: Color(0xFF8E24AA),
                                                            onPressed: () {
                                                              method.launchURL(
                                                                  "https://www.linkedin.com/in//");
                                                            },
                                                            iconSize: 26.0,
                                                          ),
                                                          IconButton(
                                                              icon: FaIcon(Icons.call),
                                                              color: Color(0xffffA8B2D1),
                                                              hoverColor: Color(0xFF8E24AA),
                                                              iconSize: 26.0,
                                                              onPressed: () {
                                                                method.launchCaller();
                                                              }),
                                                          IconButton(
                                                              icon: FaIcon(Icons.mail),
                                                              hoverColor: Color(0xFF8E24AA),
                                                              color: Color(0xffffA8B2D1),
                                                              iconSize: 26.0,
                                                              onPressed: () {
                                                                method.launchEmail();
                                                              }),
                                                          Expanded(child: Divider(thickness: 1,color: Colors.grey.withOpacity(0.6),).px8())
                                                        ]
                                                      ),
                                                    ).pOnly(top: 40),
                                                  ),


                                                ]),
SizedBox(height: size.width<401?size.height*0.1:size.height*0.2),
                                                ResumeCard(size2: 130,)

                                              ],
                                            ),



                                          ],
                                        ),
                                      ),

                                      SizedBox(height: size.height*0.2),
                                      _wrapScrollTag(index: 1, child: AboutMeMob()),
                                      SizedBox(height: size.height*0.2),
                                      _wrapScrollTag(index:2, child: CertificationWeb()),
                                      SizedBox(height: size.height*0.2),
                                      _wrapScrollTag(index:3, child: size.width<1000?ProjectsMob():ProjectsWeb()),
                                      SizedBox(height: size.height*0.2),
                                      SizedBox(height:200,),
                                      _wrapScrollTag(index: 4, child:  ContactMobileTab(),),
                                      SizedBox(height:100,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Made with ", style: GoogleFonts.poppins(fontSize: 20, color: Colors.white60),),
                                          FaIcon(FontAwesomeIcons.heart, color: Colors.blue,),
                                          Text("  in Flutter", style: GoogleFonts.poppins(fontSize: 20, color: Colors.white60),),

                                        ],
                                      ),
                                      SizedBox(height:50,),

                                    ],
                                  ).px16(),
                                )
                              ])),

                            ],
                          ),
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.06,
                    height: MediaQuery.of(context).size.height - 72,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 45,
                          child: Text(
                            "jayeshrathore2810@gmail.com",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 110,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ).pOnly(right: 4),
                ]),
              ]))),
    );
  }
}
