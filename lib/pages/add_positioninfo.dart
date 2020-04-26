
import 'package:flutter/material.dart';
import '../bean/back_info.dart';
import '../network/servicepath.dart';
import '../utils/ToastUtil.dart';

/***
 *
 *  创建人：xuqing
 *  创建时间：2020年4月14日19:25:42
 *  类说明：添加职位信息
 *
 *
 *
 *
 *
 */

class AddPositionInfo extends StatefulWidget {
  AddPositionInfo({Key key}) : super(key: key);

  @override
  _AddPositionInfoState createState() {
    return _AddPositionInfoState();
  }
}

class _AddPositionInfoState extends State<AddPositionInfo> {

  String cname;
  String name;
  String salary;
  String size;
  String title;
  String username;

  @override
  void initState() {
    super.initState();
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
        title: Text("添加职位信息",style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      body: Container(
      child:new Padding(padding: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    child: Text("职位信息:"),

                  ),
                  Expanded(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "请输入职位信息",
                        border: InputBorder.none,
                      ),
                      onChanged: (value){
                        setState(() {
                          this.name=value;
                        });
                      },
                    ),
                  )
                ],
              ),

              new Divider(
                height: 2.0,
                color: Colors.black54,
              ),
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    child: Text("公司名:"),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "请输入公司名",
                        border: InputBorder.none,
                      ),
                      onChanged: (value){
                        setState(() {
                          this.cname=value;
                        });
                      },
                    ),
                  )
                ],
              ),
              new Divider(
                height: 2.0,
                color: Colors.black54,
              ),


              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    child: Text("公司规模:"),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "请输入公司规模",
                        border: InputBorder.none,
                      ),
                      onChanged: (value){
                        setState(() {
                          this.size=value;
                        });
                      },
                    ),
                  )
                ],
              ),
              new Divider(
                height: 2.0,
                color: Colors.black54,
              ),

              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    child: Text("薪资范围:"),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "请输入薪资范围",
                        border: InputBorder.none,
                      ),
                      onChanged: (value){
                        setState(() {
                          this.salary=value;
                        });
                      },
                    ),
                  )
                ],
              ),
              new Divider(
                height: 2.0,
                color: Colors.black54,
              ),

              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    child: Text("联系人:"),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "请输入联系人",
                        border: InputBorder.none,
                      ),
                      onChanged: (value){
                        setState(() {
                          this.username=value;
                        });
                      },
                    ),
                  )
                ],
              ),

              new Divider(
                height: 2.0,
                color: Colors.black54,
              ),

              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    child: Text("联系人职务:"),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "请输入联系职务",
                        border: InputBorder.none,
                      ),
                      onChanged: (value){
                        setState(() {
                          this.title=value;
                        });
                      },
                    ),
                  )
                ],
              ),

              new Divider(
                height: 2.0,
                color: Colors.black54,
              ),

              new Padding(padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  child: RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text("提交"),
                    onPressed: ()async{
                      var  jsondata= {
                          "name": name,
                          "cname": cname,
                          "size": size,
                          "salary": salary,
                          "username": username,
                          "title": title
                        };
                    addPositionInfo(jsondata).then((value){
                      BackInfo backinfo=value;
                      int code=backinfo.code;
                      String msg=backinfo.msg;
                      if(200==code){
                        ToastUtil.showinfo(context, msg);
                      }else{
                        ToastUtil.showinfo(context, msg);
                      }

                    });
                    },
                  ),
                )
              )

            ],
          ),

        ),
      ),
    );
  }
}