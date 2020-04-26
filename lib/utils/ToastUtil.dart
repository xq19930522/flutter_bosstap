import 'package:toast/toast.dart';


/**
 * 创建人:xuqing
 * 创建时间：2020年1月3日10:43:54
 * 类说明：toast工具类
 *
 *
 *
 */
class  ToastUtil{
  static void   showinfo(Object context ,String  str){
    Toast.show(str, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
  }

}


