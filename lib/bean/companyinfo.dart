



class Company {
    List<Data> data;
    int code;
    String msg;
    Company({this.data, this.code, this.msg});

    factory Company.fromJson(Map<String, dynamic> json) {
        return Company(
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
    String count;
    String employee;
    String hot;
    String inc;
    String location;
    String logo;
    String name;
    String size;
    String type;
    int  id;

    Data({this.id,this.count, this.employee, this.hot, this.inc, this.location, this.logo, this.name, this.size, this.type});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            id:json['id'],
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
        data['id'] = this.id;
        return data;
    }
}