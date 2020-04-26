/**
 * 创建人：xuqing
 * 创建时间：2020年3月25日00:42:48
 * 类说明：公司信息 详情
 *
 *
 *
 */
class Comdetails {
    Data data;
    int code;
    String msg;

    Comdetails({this.data, this.code, this.msg});

    factory Comdetails.fromJson(Map<String, dynamic> json) {
        return Comdetails(
            data: json['data'] != null ? Data.fromJson(json['data']) : null, 
            code: json['code'], 
            msg: json['msg'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['msg'] = this.msg;
        if (this.data != null) {
            data['data'] = this.data.toJson();
        }
        return data;
    }
}

class Data {
    String count;
    String employee;
    String hot;
    String inc;
    String location;
    String logo;
    String name;
    String size;
    String type;

    Data({this.count, this.employee, this.hot, this.inc, this.location, this.logo, this.name, this.size, this.type});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            count: json['count'], 
            employee: json['employee'], 
            hot: json['hot'], 
            inc: json['inc'], 
            location: json['location'], 
            logo: json['logo'], 
            name: json['name'], 
            size: json['size'], 
            type: json['type'], 
        );
    }
    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['count'] = this.count;
        data['employee'] = this.employee;
        data['hot'] = this.hot;
        data['inc'] = this.inc;
        data['location'] = this.location;
        data['logo'] = this.logo;
        data['name'] = this.name;
        data['size'] = this.size;
        data['type'] = this.type;
        return data;
    }
}