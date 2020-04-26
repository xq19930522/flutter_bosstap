import 'package:flutter/material.dart';
import '../../bean/companydetails.dart';





class CompanyInfo extends StatelessWidget {
  final Data data;
  CompanyInfo({Key key,this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(padding:
    const EdgeInsets.all(10.0),
      child: new SizedBox(
        child: Card(
          elevation: 0.0,
          child: Row(
            children: <Widget>[
              new Padding(padding:const EdgeInsets.only(
                top: 10.0,
                left: 15.0,
                right: 15.0,
                bottom: 0.0
              ),
                child: new Image.network(
                  data.logo,
                    width: 50,
                    height: 50,
                ) ,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      child: Text(
                        data.name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 10, bottom: 5.0),
                    ),
                    new Padding(padding:
                    EdgeInsets.only(
                      top: 5.0,
                      left: 0.0,
                      right: 5.0,
                      bottom: 5.0
                    ),
                      child: Text(
                        data.location,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey
                        ),
                      ),
                    ),

                    new Padding(padding:
                        EdgeInsets.only(
                            top: 5.0,
                            left: 0.0,
                            right: 5.0,
                            bottom: 5.0
                        ),
                      child: Text(
                        data.type+"|"+data.size+"|"+data.employee,
                        style: TextStyle(
                          fontSize: 13.0, color: Colors.grey
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
