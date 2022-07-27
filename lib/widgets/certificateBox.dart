import 'package:flutter/material.dart';
import 'certificates_data.dart';

class CertificateBox extends StatelessWidget {
  const CertificateBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
            
            CertificatesDataUI(title: "Flutter: Firebase Cloud Firestore!", subTitle: "Linkedin Learning - Certificate of Completion(Use of Stream Builder, Authentication using Firebase, Cloud Firestore) by London App Brewery and Angela Yu! ", duration: "July, 2022", url: "https://www.linkedin.com/learning/certificates/d8138c907b5da02782b293dea0db68e0ab4f2685e26608121a56e6e750c25e36?trk=share_certificate"),
            CertificatesDataUI(title: "Flutter: Powering Your App with Live Web Data", subTitle: "Linkedin Learning - Certificate of Completion(Rest APIs, http Networking) by London App Brewery and Angela Yu! ", duration: "July, 2022", url: "https://www.linkedin.com/learning/certificates/31c9e276af57467fec2c2ef6b0a3c017392bec6494624f57d0b46a4fa8c4a6fb?trk=share_certificate",),
            CertificatesDataUI(title: "Flutter: Building an App with State  ", subTitle: "Linkedin Learning - Certificate of Completion (Stateful vs Stateless Widgets) by London App Brewery and Angela Yu!  ", duration: "July, 2022", url: "https://www.linkedin.com/learning/certificates/795bfa3374def0744bec419c3a1b75d79494f374334cb4dca783ef943b6d45f4?trk=share_certificate",)

          ]
    );
        
  }
}
