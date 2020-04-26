/***
 * 创建人：xuqing
 * 创建时间：2020年3月9日19:21:24
 * 类说明：职位信息 模型类
 *
 *
 *
 */


class PositionInfo {
    List<Data> data;
    int code;
    String msg;
    PositionInfo({this.data, this.code, this.msg});
    factory PositionInfo.fromJson(Map<String, dynamic> json) {
        return PositionInfo(
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
    String cname;
    int id;
    String name;
    String salary;
    String size;
    Object title;
    String username;
    Data({this.cname, this.id, this.name, this.salary, this.size, this.title, this.username});
    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            cname: json['cname'], 
            id: json['id'], 
            name: json['name'], 
            salary: json['salary'], 
            size: json['size'], 
            title: json['title'] ,
            username: json['username'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cname'] = this.cname;
        data['id'] = this.id;
        data['name'] = this.name;
        data['salary'] = this.salary;
        data['size'] = this.size;
        data['username'] = this.username;
        data['title']=this.title;
        return data;
    }



}