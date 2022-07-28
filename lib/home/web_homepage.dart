import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/about/about_web.dart';
import 'package:portfolio/webLayout/contact_web.dart';
import 'package:portfolio/webLayout/projects_web.dart';
import 'package:portfolio/widgets/certifications.dart';
import 'package:portfolio/widgets/left_socials.dart';
import 'package:portfolio/widgets/resume_card.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/animations/rotate_icon.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../animations/entrance_fader.dart';

import '../widgets/web_bar_tile.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
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
    var size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color(0xff000026),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: size.height * 0.14,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ImageRotate(),
                      Spacer(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: DefaultTabController(
                            animationDuration: Duration(milliseconds: 1000),
                            length: 4,
                            child: TabBar(
                              indicatorColor: Colors.transparent,
                              onTap: (index) async {
                                _scrollToIndex(index);
                              },
                              tabs: const [
                                Tab(
                                  child: WebBarTile(
                                    text: 'HOME',
                                  ),
                                ),
                                Tab(
                                  child: WebBarTile(
                                    text: 'ABOUT',
                                  ),
                                ),
                                Tab(
                                  child: WebBarTile(
                                    text: 'PROJECT',
                                  ),
                                ),
                                Tab(
                                  child: WebBarTile(
                                    text: 'CONTACT',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ResumeCard(),
                    ],
                  ),
                ),
              ),
              Row(children: [
                //Social Icon
                LeftSocials(),

                //all widgets
                Expanded(
                  child: Container(
                      height: size.height - 82,
                      width: size.width*0.8,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomScrollView(
                          controller: _autoScrollController,
                          slivers: [
                            SliverList(
                                delegate: SliverChildListDelegate([
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //home abt me
                                  _wrapScrollTag(
                                    index:0,
                                    child: Expanded(
                                      child: Row(
                                        children: [
                                          //written info
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center ,
                                            children: [
                                              SizedBox(height: size.height * 0.06),
                                              SizedBox(
                                                height: 40,
                                                child: DefaultTextStyle(
                                                  style: GoogleFonts.robotoMono(
                                                    fontSize: 20.0,
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
                                              ),
                                              const SizedBox(height: 6.0),
                                              Text(
                                                "Jayesh Rathore",
                                                style: GoogleFonts.sacramento(
                                                    fontSize: 80,
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
                                                          "Flutter Developer"),
                                                      FadeAnimatedText(
                                                          "UI/UX Developer"),
                                                      FadeAnimatedText(
                                                          "Front-End Developer"),
                                                      FadeAnimatedText(
                                                          "A Friend :)"),
                                                    ],
                                                    repeatForever: true,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 8.0),
                                              Wrap(

                                                children: [
                                                  Container(
                                                    width: size.width*0.55,
                                                    child: Text(
                                                    'I am a 3rd year Student currently persuing B.tech from VIT Bhopal, \nand specializing in building(occasionally designing) exceptional websites, applications, \nand love to play with trending internet stuffs ',
                                                    style: GoogleFonts.robotoMono(
                                                        fontSize: 15,
                                                        color: Colors.white60,

                                                    ),
                                                ),
                                                  ),]
                                              ),

                                              SizedBox(height: 60),
                                              Container(
                                                height: 60.0,
                                                child: RaisedButton(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      side: BorderSide(
                                                          color: Colors.lightBlueAccent)),
                                                  onPressed: () {},
                                                  hoverColor: Colors.indigo,
                                                  hoverElevation: 20,
                                                  padding: EdgeInsets.all(20.0),
                                                  color: Color(0xff000026),
                                                  textColor: Color.fromRGBO(0, 160, 227, 1),
                                                  child: Text("Get in Touch",
                                                      style: TextStyle(fontSize: 18)),
                                                ),
                                              ),
                                            ],
                                          ),

                                          //image
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            width: size.width*0.2,
                                            child: Opacity(
                                              opacity: 0.9,
                                              child: EntranceFader(
                                                offset: const Offset(0, 0),
                                                delay: const Duration(seconds: 1),
                                                duration: const Duration(
                                                    milliseconds: 800),
                                                child: Image.asset(
                                                  "images/photo1.png",
                                                  height: size.width < 1350
                                                      ? size.height * 0.7
                                                      : size.height * 0.85,
                                                ),
                                              ),
                                            ),
                                          ),
                                          //image end
                                        ],
                                      ),
                                    ),
                                  ),
                                  //home abt me end

                                  SizedBox(height: 200),

                                  //about me
                                  _wrapScrollTag(
                                    index: 1,
                                    child:  AboutMeWeb(),
                                  ),

                                  SizedBox(height: 200,),

                                    //certifications
                                 _wrapScrollTag(
                                   index: 2,
                                    child:CertificationWeb()
                                    ),

                                  SizedBox(height: 200,),

                                    //certifications
                                 _wrapScrollTag(
                                   index: 3,
                                    child:ProjectsWeb()
                                    ),

                                  ContactWeb()

                                ],
                              )
                            ]))
                          ],
                        ),
                      )),
                ),
              ]),
            ],
          ),
        ));
  }
}
