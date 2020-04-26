import 'package:flutter/material.dart';


class CompanyHotJob extends StatelessWidget {
  CompanyHotJob({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(padding:
       const EdgeInsets.only(
         top: 10.0,
         left: 10.0,
         right: 10.0,
         bottom: 10.0,
       ),
      child: new Row(
        children: <Widget>[
          new  RichText(
             text: TextSpan(
               text: "敬请期待",
               style: TextStyle(
                 fontSize: 16.0,
                 color: Colors.black


               )
             )
          ),
        ],
      ),
    );
  }
}
