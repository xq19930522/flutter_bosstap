import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CompanyInc extends StatelessWidget {

  final String  companyInc;

  CompanyInc({Key key,this.companyInc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(padding:
    const EdgeInsets.only(
      top: 10.0,
      left: 10.0,
      right: 10.0,
      bottom: 10.0
    ),

    child: Container(
      color: Colors.white,
      child: new Padding(padding:
          const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: Text("公司介绍:",
                  style:  TextStyle(
                    fontSize: 15
                  ),),
                ),

             Expanded(
               child: new RichText(text: new TextSpan(
                   text: companyInc,
                   style: TextStyle(
                       fontSize: 13.0,
                       color: Colors.black
                   )
               )),
             )
//
              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}
