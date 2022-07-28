import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/webLayout/project_card.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/contact_utils.dart';
import 'dimensions_util.dart';

class ContactWeb extends StatelessWidget {
  const ContactWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
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
          SizedBox(height: 20,),
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              children: ContactUtils.contactIcon
                  .asMap()
                  .entries
                  .map((e) => ProjectCard(
                  projectIconData: e.value,
                  projectTitle: ContactUtils.titles[e.key],
                  projectDescription: ContactUtils.details[e.key],
                ),
              )
                  .toList()),
        ],
      ),
    );
  }
}
