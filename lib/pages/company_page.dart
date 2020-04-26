import 'package:flutter/material.dart';
import '../bean/companyinfo.dart';
import '../network/servicepath.dart';
import '../utils/ToastUtil.dart';
import 'company/company_details.dart';


/**
 *
 * 创建人：xuqing
 * 创建时间：
 * 类说明：公司信息
 *
 *
 *
 */



class CompanyPage extends StatefulWidget {
  CompanyPage({Key key}) : super(key: key);
  @override
  _CompanyPageState createState() {
    return _CompanyPageState();
  }
}
class _CompanyPageState extends State<CompanyPage> {
  List getdata;
  Data  _data=null;
  @override
  void initState() {
    super.initState();
    getcompanyinfo();

  }
   void   getcompanyinfo(){
    getcompanyInfo().then((value){
      setState(() {
        Company company=value;
        String  msg=company.msg;
        int code=company.code;
        if(code==200){
          getdata=company.data;
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
        title: Text("公司",style:
        TextStyle(
            color: Colors.white,
            fontSize: 20
        ),),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.builder(
              //itemCount: 3,
              itemCount: (getdata==null)?0:getdata.length,
              itemBuilder: (BuildContext context, int position){
                return  getItem(position);
              }),

      ),
    );
  }


     //公司信息 item 布局
   Widget  getItem(int index){
   _data =getdata[index];
   print(_data.hot);
  return  GestureDetector(
    child: new Padding(
      padding: const EdgeInsets.only(
          top: 3.0,
          left: 5.0,
          right: 5.0,
          bottom: 3.0
      ),
      child: SizedBox(
        child: new  Card(
          elevation: 0.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Padding(padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 15.0,
                  right: 15.0,
                  bottom: 0.0
              ),
                child: Image.network(_data.logo,
                  width: 50.0,
                  height: 100.0,
                ),
              ),

              Expanded(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Container(
                        child: Text(_data.name,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        margin: const EdgeInsets.only(top: 10.0,bottom: 5.0),
                      ),
                      new Padding(padding: const EdgeInsets.only(
                        top: 5.0,
                        left: 0.0,
                        right: 5.0,
                        bottom: 5.0,
                      ),
                        child: Text(_data.location,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey
                          ),
                        ),),

                      new Padding(padding: const EdgeInsets.only(
                        top: 5.0,
                        left: 0.0,
                        right: 5.0,
                        bottom: 5.0,
                      ),
                        child: Text(
                          _data.type+"|"+_data.size+"|"+_data.employee,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey
                          ),
                        ),),
                      new  Divider(
                        height: 2.0,
                        color: Colors.black54,
                      ),
                      Row(
                        children: <Widget>[
                          new Padding(padding: const EdgeInsets.only(
                              top: 5.0,
                              left: 0.0,
                              right: 5.0,
                              bottom: 15.0
                          ),
                            child: Text("热招"+_data.hot+"等"+_data.count+"个职位",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.grey
                              ),
                            ),

                          ),
                          new Expanded(child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              new Padding(padding: const  EdgeInsets.only(
                                  bottom: 8.0
                              ),
                                child:  const Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          )
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),

    ),
    onTap: (){
      setState(() {
       onItemclick(index);
      });
    },
  );
 }
   void  onItemclick(int  index){
     _data =getdata[index];
     print("获取到的头ID"+_data.id.toString());

    Navigator.of(context).pushNamed("company_details" ,arguments: {"id":_data.id});

   }
}



