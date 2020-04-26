
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bean/positioninfo.dart';
import '../network/servicepath.dart';
import '../utils/ToastUtil.dart';








/***
 *
 * 创建人：xuqing
 * 创建时间：2020年3月9日00:40:10
 * 类说明：职位
 *
 */



class JobPage extends StatefulWidget {
  JobPage({Key key}) : super(key: key);
  @override
  _JobPageState createState() {
    return _JobPageState();
  }
}
class _JobPageState extends State<JobPage> {
  List  _getdata=[];
  Data  data=null ;
  @override
  void initState() {
    super.initState();
    getInfo();
  }
  @override
  void dispose() {
    super.dispose();
  }
  void   getInfo() async {
      getPositionInfo().then((value){
        setState(() {
          PositionInfo positionInfo=value;
          String  msg=positionInfo.msg;
          int code =positionInfo.code;
          if(code==200){
            _getdata=positionInfo.data;
            print(_getdata);
            ToastUtil.showinfo(context, msg);
          }else{
            ToastUtil.showinfo(context, msg);
          }
        });
      });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
       appBar: AppBar(
         title: Text("职位",style:
           TextStyle(
             color: Colors.white,
             fontSize: 20
           ),),
           centerTitle: true,
       ),
      body: Container(
        child: new ListView.builder(
            itemCount: (_getdata == null) ? 0 : _getdata.length,
            itemBuilder: (BuildContext context , int position){
             /* data=_getdata[position];
              return  JobList(data);*/
            return getItem(position);
                //getItem(position);
            }),
      ),
    );

  }


  Widget  getItem(int index){
    data=_getdata[index];
    return  new Padding(padding: EdgeInsets.only(
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