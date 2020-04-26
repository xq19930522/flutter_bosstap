/**
 *
 * 创建人：xuqing
 * 创建时间：2020年3月15日19:47:42
 * 类说明： 网络请求接口api
 *
 *
 */





class  Api {


  static const String BASE_URL = "http://192.168.1.14:8090/";

  static const String POSITIONINFO = BASE_URL + "boss/position/getpositioninfo";

  static const String  MESSAGEINFO=BASE_URL+"boss/message/getmessageinfo";

  static const String  COMPANY_INFO=BASE_URL+"boss/company/getcompanyinfo";


  static const String  COMPAN_DETAILS=BASE_URL+"boss/company/getcompanydetails";


  static const String  ADD_POSITION_INFO=BASE_URL+"boss/position/addpositioninfo";

  static const String GET_POSITION_DEATAILS=BASE_URL+"boss/position/getpositiondetails";







}
