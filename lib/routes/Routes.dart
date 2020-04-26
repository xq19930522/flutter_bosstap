import 'package:flutter/material.dart';
import '../my.dart';
import '../pages/add_positioninfo.dart';
import '../pages/company/company_details.dart';
import '../pages/wallet.dart';





//配置路由
final  routes= {
  "/my":(context)=>My(),
  "addpositioninfo":(context)=>AddPositionInfo(),
  "company_details":(context,{arguments})=>CompanyDetail(arguments:arguments),
  "wallet":(context)=>Wallet()


};

//固定写法
var    onGenerateRoute=(RouteSettings settings) {
// 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context,
                  arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};

