import 'package:flutter/material.dart';

class ResumeCard extends StatelessWidget {
  double? size2;
  ResumeCard({Key? key, this.size2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Card(
        elevation: 4.0,
        color: Colors.lightBlueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Container(
          width: size2,
          margin: EdgeInsets.all(0.85),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff0A192F),
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.purpleAccent;
                    return Colors.lightBlueAccent;
                  }),
            ),

            onPressed: () {
              // method.launchURL(
              //     "https://drive.google.com/file/d/1yHLcrN5pCUGIeT8SrwC2L95Lv0MVbJpx/view?usp=sharing");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Text(
                "Resume",
                style: TextStyle(

                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
