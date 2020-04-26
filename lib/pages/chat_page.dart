import 'package:flutter/material.dart';
import '../network/servicepath.dart';
import '../bean/messageinfo.dart';
import '../utils/ToastUtil.dart';


/**
 *
 * 创建人：xuqing
 * 创建时间:2020年3月15日22:55:51
 * 类说明：消息模块
 *
 *
 */

class ChatPage extends StatefulWidget {
  ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() {
    return _ChatPageState();
  }
}

class _ChatPageState extends State<ChatPage> {
  List getdata=[];
  Data _data=null;

  @override
  void initState() {
    super.initState();
    getMessageInfo();
  }
  void  getMessageInfo()async{
    getmessageinfo().then((value){
      setState(() {
        MessageInfo messageInfo=value;
        String msg=messageInfo.msg;
        int code=messageInfo.code;
        if(code==200){
          getdata=messageInfo.data;
          ToastUtil.showinfo(context, msg);
        }else{
          ToastUtil.showinfo(context, msg);
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("消息",style:
        TextStyle(
            color: Colors.white,
            fontSize: 20
        ),),
        centerTitle: true,
      ),
      body: Container(
        child:new  ListView.builder(
             itemCount:(getdata == null)?0:getdata.length,
            itemBuilder: (BuildContext context , int position){
            return getItem(position);
            }),


      ),
    );
  }
  Widget  getItem(int index){
    _data=getdata[index];
    return
       SizedBox(
      child: Card(
        elevation: 0.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: ClipOval(
                    child: Image.network(
                      _data.headportraiturl,
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new Text(_data.nickname,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.black
                          ),
                        ),
                        margin: EdgeInsets.only(
                            top: 2.0,
                            left: 10.0,
                            bottom: 2.0
                        ),
                      ),
                      new Container(
                        child: new Text(_data.companyname+"|"+_data.jobname,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey
                          ),
                        ),
                        margin: EdgeInsets.only(
                            top: 2.0,
                            left: 10.0,
                            bottom: 2.0
                        ),
                      ),

                      new Container(
                        child: new Text(_data.msg,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                          ),
                        ),
                        margin: EdgeInsets.only(
                            top: 2.0,
                            left: 10.0,
                            bottom: 2.0
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            new Padding(padding: const EdgeInsets.only(left: 5.0,right: 5.0),
              child: new Divider(
                height: 2.0,
                color: Colors.black54,
              ),
            )
          ],
        ),
      ),
    );


      Container(
     child: new Padding(padding: EdgeInsets.only(
        left: 2.0,
        right: 2.0,
      ),
       child: SizedBox(
         child: Column(
           children: <Widget>[
             Row(
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.only(left: 20),
                   child: ClipOval(
                     child: Image.network(
                       _data.headportraiturl,
                       height: 40,
                       width: 40,
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
                 Expanded(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       new Container(
                         child: new Text(_data.nickname,
                           textAlign: TextAlign.left,
                           style: new TextStyle(
                               fontSize: 18.0,
                               color: Colors.black
                           ),
                         ),
                         margin: EdgeInsets.only(
                             top: 2.0,
                             left: 10.0,
                             bottom: 2.0
                         ),
                       ),
                       new Container(
                         child: new Text(_data.companyname+"|"+_data.jobname,
                           textAlign: TextAlign.left,
                           style: new TextStyle(
                               fontSize: 15.0,
                               color: Colors.grey
                           ),
                         ),
                         margin: EdgeInsets.only(
                             top: 2.0,
                             left: 10.0,
                             bottom: 2.0
                         ),
                       ),

                       new Container(
                         child: new Text(_data.msg,
                           textAlign: TextAlign.left,
                           style: new TextStyle(
                               fontSize: 12.0,
                               color: Colors.grey
                           ),
                         ),
                         margin: EdgeInsets.only(
                             top: 2.0,
                             left: 10.0,
                             bottom: 2.0
                         ),
                       ),
                     ],
                   ),
                 )
               ],
             ),
             new Padding(padding: const EdgeInsets.only(left: 5.0,right: 5.0),
               child: new Divider(
                 height: 2.0,
                 color: Colors.black54,
               ),
             )
           ],
         ),
      /*   child: Card(
           elevation: 0.0,
         ),*/
       ),
      )
    );

  }




}