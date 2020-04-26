import 'package:flutter/material.dart';
import '../bean/positioninfo.dart';


class JobList extends StatelessWidget {
   Data data;
  JobList( Data data,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Padding(padding: EdgeInsets.only(
        top: 3.0,
        left: 5.0,
        right: 5.0,
        bottom: 3.0
    ),
      child: new SizedBox(
        child: Card(
          elevation: 0.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new  Row(
                        children: <Widget>[
                          new Padding(padding: EdgeInsets.only(
                              top: 10.0,
                              left: 10.0,
                              bottom: 5.0
                          ),
                            child: new Text(data.name),
                          ),
                          new Expanded(
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  new Padding(padding: EdgeInsets.only(
                                      right: 10.0
                                  ),
                                    child:  Text(
                                      data.salary,
                                      style: TextStyle(
                                          color: Colors.red
                                      ),
                                    ),
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                      new Container(
                        child: new Text(data.name+data.size,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey
                          ),
                        ),
                        margin: EdgeInsets.only(
                            top: 5.0,
                            left: 10.0,
                            bottom: 5.0
                        ),
                      ),
                      new  Divider(),
                      new Row(
                        children: <Widget>[
                          new Padding(padding: EdgeInsets.only(
                            top: 5.0,
                            left: 10.0,
                            right: 5.0,
                            bottom: 15.0,
                          ),
                            child: new Text(
                              data.username+"|"+data.title,
                              style: TextStyle(
                                  color: new Color.fromARGB(255, 0, 215, 198)
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
