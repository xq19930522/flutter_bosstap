import 'package:bosszhiping_tab/bean/messageinfo.dart';
import 'package:dio/dio.dart';
import '../config/api.dart';
import '../bean/positioninfo.dart';
import '../bean/companyinfo.dart';
import '../bean/companydetails.dart';
import '../bean/back_info.dart';

/**
 *  获取主页数据
 *
 *
 */

Future   getPositionInfo()async{
  try{
    Dio  dio=new Dio();
    Response res= await dio.get(Api.POSITIONINFO);
    PositionInfo positionInfo=PositionInfo.fromJson(res.data);
    print(res.data.toString());
    return positionInfo;
  }catch(e){
    return print(e);
  }
}


/**
 * 获取消息数据
 *
 *
 */

Future getmessageinfo() async{
  try{
    Dio dio=new Dio();
    Response response=await dio.get(Api.MESSAGEINFO);
    MessageInfo messageInfo=MessageInfo.fromJson(response.data);
    print(response.data.toString());
    return messageInfo;
  }catch(e){
    return print(e);
  }
}


/**
 *
 * 获取公司信息数据
 *
 */


Future getcompanyInfo()async{
  try{
    Dio dio=new Dio();
    Response response=await dio.get(Api.COMPANY_INFO);
    Company companyInfo=Company.fromJson(response.data);
    print(response.data.toString());
    return companyInfo;
  }catch(e){
    return print(e);
  }

}

/***
 *
 * 公司详细信息
 *
 *
 */
Future  getcomanydetails(var data)async{
    try{
      Dio dio=new Dio();
      Response response=await dio.get(Api.COMPAN_DETAILS,queryParameters: data);
      print("comdetails  ----- >　　　"+response.data.toString());
      Comdetails  comdetails=Comdetails.fromJson(response.data);
      return comdetails;
    }catch(e){
     print(e);
    }


}


/**
 *
 *
 * 提交职位信息
 *
 */


Future  addPositionInfo(var data)async{
  try{
    Dio dio=new Dio();
    Response response=await dio.post(Api.ADD_POSITION_INFO,queryParameters: data);
    print(response.data);
    BackInfo  backInfo=BackInfo.fromJson(response.data);
    return backInfo;
  }catch(e){
    print(e);
  }


}



