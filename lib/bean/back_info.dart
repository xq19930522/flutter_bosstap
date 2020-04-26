


/**
 *
 * 创建人：xuqing
 * 创建时间：
 * 类说明：返回信息
 *
 *
 */


class BackInfo {
    int code;
    String msg;
    BackInfo({this.code, this.msg});

    factory BackInfo.fromJson(Map<String, dynamic> json) {
        return BackInfo(
            code: json['code'],
            msg: json['msg'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['msg'] = this.msg;
        return data;
    }








}