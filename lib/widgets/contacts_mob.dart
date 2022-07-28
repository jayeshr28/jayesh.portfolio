import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../webLayout/dimensions_util.dart';
import '../webLayout/project_card.dart';
import 'contact_utils.dart';


class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("05. ",style: GoogleFonts.nunito(color: Colors.blue, fontSize: 28)),
              Text(
                "Contact Me Here",
                style: GoogleFonts.kanit(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ).pOnly(right: 40),
              Expanded(child: Divider(thickness: 1,color: Colors.grey,).p16()),
            ],
          ),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(
                projectIconData: ContactUtils.contactIcon[i],
                projectTitle: ContactUtils.titles[i],
                projectDescription: ContactUtils.details[i],
              ),
            ),
            options: CarouselOptions(
              height: 300,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          ),
        ],
      ),
    );
  }
}