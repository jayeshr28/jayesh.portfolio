import 'package:flutter/material.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width<400){
      return Container(height: 20,);
    }
    return Container(
      height: 60.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(
                10.0),
            side: BorderSide(
                color: Colors
                    .lightBlueAccent)),
        onPressed: () {},
        hoverColor: Colors.indigo,
        hoverElevation: 20,
        padding: EdgeInsets.all(20.0),
        color: Color(0xff000026),
        textColor: Color.fromRGBO(
            0, 160, 227, 1),
        child: Text("Get in Touch",
            style:
            TextStyle(fontSize: 18)),
      ),
    );
  }
}
