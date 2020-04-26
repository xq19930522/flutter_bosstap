/**
 * 创建人:xuqing
 * 创建时间：2020年3月25日00:44:06
 * 类说明： 消息模型类
 *
 *
 *
 */


class MessageInfo {
    List<Data> data;
    int code;
    String msg;
    MessageInfo({this.data, this.code, this.msg});
    factory MessageInfo.fromJson(Map<String, dynamic> json) {
        return MessageInfo(
            data: json['data'] != null ? (json['data'] as List).map((i) => Data.fromJson(i)).toList() : null, 
            code: json['code'], 
            msg: json['msg'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['msg'] = this.msg;
        if (this.data != null) {
            data['data'] = this.data.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Data {
    String companyname;
    String headportraiturl;
    int id;
    String jobname;
    String msg;
    String nickname;
    Data({this.companyname, this.headportraiturl, this.id, this.jobname, this.msg, this.nickname});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            companyname: json['companyname'], 
            headportraiturl: json['headportraiturl'], 
            id: json['id'], 
            jobname: json['jobname'], 
            msg: json['msg'], 
            nickname: json['nickname'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['companyname'] = this.companyname;
        data['headportraiturl'] = this.headportraiturl;
        data['id'] = this.id;
        data['jobname'] = this.jobname;
        data['msg'] = this.msg;
        data['nickname'] = this.nickname;
        return data;
    }
}