import 'package:bosszhiping_tab/bean/companydetails.dart' as prefix0;
import 'package:flutter/material.dart';
import 'company_inc.dart';
import 'company_hot_job.dart';
import 'company_info.dart';
import '../../network/servicepath.dart';
import '../../bean/companydetails.dart';
import '../../utils/ToastUtil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';






/***
 * 创建人:xuqing
 * 创建时间 :
 *
 *
 *
 */


const double _kAppBarHeight=256.0;
class CompanyDetail extends StatefulWidget {
   final  arguments;
  CompanyDetail({Key key,this.arguments}) : super(key: key);

  @override
  _CompanyDetailState createState() {
    return _CompanyDetailState(arguments);
  }
}

class _CompanyDetailState extends State<CompanyDetail> with  TickerProviderStateMixin {
  final  arguments;
  _CompanyDetailState(this.arguments);

  Data _data;
  List<Tab>tabs=[
    new  Tab(text: "公司概况",),
    new  Tab(text: "热招职位",)
  ];
  TabController tabControllers;
  List<String>_urls=[
    "https://www.itying.com/images/flutter/1.png",
    "https://www.itying.com/images/flutter/2.png",
    "https://www.itying.com/images/flutter/3.png",
  ];

  Widget _companyTabContent;
  VoidCallback onChanged;
  int currentIndex=0;


  @override
  void initState() {
    super.initState();
    print(arguments["id"].toString());
    var  jsondata={
      "id":arguments["id"]
    };
    getComapanydetailsinfo(jsondata);

  }


  void  getComapanydetailsinfo(var  jsondata) async{

    getcomanydetails(jsondata).then((value){
      Comdetails comdetails=value;
      setState(() {
        int code=comdetails.code;
        String msg=comdetails.msg;
        if(200==code){
          _data=comdetails.data;
          _companyTabContent= CompanyInc(companyInc: _data.inc,);
          tabControllers=new TabController(length: tabs.length, vsync: this);
          onChanged=(){
            setState(() {
              if(currentIndex==0){
                _companyTabContent= CompanyInc(companyInc: _data.inc,);
              }else{
                _companyTabContent= new CompanyHotJob();
              }
              currentIndex=this.tabControllers.index;
            });
          };
          tabControllers.addListener(onChanged);
        }else{
          ToastUtil.showinfo(context, msg);
        }
      });

    });

  }

  @override
  void dispose() {
    tabControllers.removeListener(onChanged);
    tabControllers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("公司详情",style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),),

      ),
      body: _details(),
    );
  }
  Widget  _details(){
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16/9,
                child: new Swiper(
                    itemBuilder: (BuildContext context,  int index){
                      return  new Image.network(
                        _urls[index],
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: _urls.length,
                  pagination: new  SwiperPagination(),
                  loop: true,
                  autoplay: true,
                ),
              ),
            ),
            new  Container(
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new CompanyInfo(data:_data ,),
                  new Divider(),
                  new TabBar(
                    indicatorWeight: 3.0,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: new TextStyle(fontSize: 16.0),
                    labelColor: Colors.black,
                    controller: tabControllers,
                    tabs: tabs,
                    indicatorColor: Theme.of(context).primaryColor,
                  ),
                  _companyTabContent,
                ],
              ),
            ),


          ],
        ),
      ),
    );

  }

}



/*
const double _kAppBarHeight=256.0;
class CompanyDetail extends StatefulWidget {

  CompanyDetail({Key key}) : super(key: key);
  @override
  _CompanyDetailState createState() {
    return _CompanyDetailState();
  }
}

class _CompanyDetailState extends State<CompanyDetail> with TickerProviderStateMixin{

  Data _data;

   List<Tab>tabs;
  TabController tabControllers;
  List<Widget>_imagePages;
  List<String>_urls=[
    "https://www.itying.com/images/flutter/1.png",
    "https://www.itying.com/images/flutter/2.png",
    "https://www.itying.com/images/flutter/3.png",
  ];

  Widget _companyTabContent;
  VoidCallback onChanged;
  int currentIndex=0;
  @override
  void initState() {
    super.initState();
    var  jsondata={
      "id":"4"
    };
    getcomanydetails(jsondata).then((value){
      Comdetails comdetails=value;
      setState(() {
        int code=comdetails.code;
        String msg=comdetails.msg;
        if(200==code){
          _data=comdetails.data;
          if(!_urls.isEmpty){
            _imagePages=<Widget>[];
            _urls.forEach((String  url){
              _imagePages.add(
                  new Container(
                    color: Colors.black.withAlpha(900),
                    child: new ConstrainedBox(
                      constraints:
                      const BoxConstraints.expand(),
                      child: Image.network(url,
                        fit: BoxFit.cover,
                        height: _kAppBarHeight,
                      ),
                    ),
                  )
              );
            });
          }
          tabs=[
            new  Tab(text: "公司概况",),
            new  Tab(text: "热招职位",)
          ];
          _companyTabContent= CompanyInc(companyInc: _data.inc,);
          tabControllers=new TabController(length: tabs.length, vsync: this);
          onChanged=(){
            setState(() {
              if(currentIndex==0){
                _companyTabContent= CompanyInc(companyInc: _data.inc,);
              }else{
                _companyTabContent= new CompanyHotJob();
              }
              currentIndex=this.tabControllers.index;
            });
          };
          tabControllers.addListener(onChanged);
        }else{
          ToastUtil.showinfo(context, msg);
        }
      });

    });

  }
  @override
  void dispose() {
    tabControllers.removeListener(onChanged);
    tabControllers.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 242, 242, 245),
      body: new Stack(
        children: <Widget>[
          new SingleChildScrollView(
         child: Column(
           children: <Widget>[

     new SizedBox.fromSize(
               size: const Size.fromHeight(_kAppBarHeight),
               child: Text("哈哈"),
             ),

             new  Container(
               color: Colors.white,
               child: new Column(
                 children: <Widget>[
                   new CompanyInfo(data:_data ,),
                   new Divider(),
                   new TabBar(
                       indicatorWeight: 3.0,
                        indicatorSize: TabBarIndicatorSize.tab,
                       labelStyle: new TextStyle(fontSize: 16.0),
                       labelColor: Colors.black,
                       controller: tabControllers,
                       tabs: tabs,
                       indicatorColor: Theme.of(context).primaryColor,
                   ),
                   _companyTabContent,
                 ],
               ),
             ),

             new  Positioned(
                top: 10,
                 left: -10,
                 child: new Container(
                   padding: const EdgeInsets.all(15),
                   child: new BackButton(color: Colors.red,
                   ),

                 ) )
           ],
         ),
          )
        ],
      ),
    );


  }

}*/







