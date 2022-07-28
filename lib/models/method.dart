import 'package:url_launcher/url_launcher.dart';

class Method {

  launchURL(String link) async {
    var url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    const url = "tel:9770465750";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    if (await canLaunch("mailto:jayeshrathore2810@gmail.com")) {
      await launch("mailto:jayeshrathore2810@gmail.com");
    } else {
      throw 'Could not launch';
    }
  }

}