import 'package:flutter/material.dart';


/***
 * 创建人：xuqing
 * 类说明：钱包页面
 *
 */



class Wallet extends StatefulWidget {
  Wallet({Key key}) : super(key: key);

  @override
  _WalletState createState() {
    return _WalletState();
  }
}

class _WalletState extends State<Wallet> {
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
        title: Text("我的钱包",style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),),
        centerTitle: true,

      ),
      body: _payWidget(),
    );
  }

    Widget _payWidget(){
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            color: Colors.greenAccent,
            margin: EdgeInsets.only(top: 5),
            child: Text("余额 ： "+"20元",style: TextStyle(
              fontSize: 15,
              color: Colors.white
            ),),
          ),
        new  Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),

         child: TextField(
           decoration: InputDecoration(
             hintText: "请输入充值金额",
             border: InputBorder.none,
           ),
           onChanged: (value){
             
           },
         ),
        ),
          new Padding(padding: EdgeInsets.only(left: 10,right: 10),
            child:      new Divider(
              color: Colors.black,
              height: 2,
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            child:RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text("充值"),
                onPressed: (){
                  print("点击了充值");
                }),
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
          )

        ],
      ),
    );
    }
}