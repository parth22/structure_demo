class CityModel {
  List<dynamic> data;
  String page;
  bool result;
  CityModel({this.data, this.page, this.result});
  CityModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null
        ? json['data'].map((i) => Data.fromJson(i)).toList()
        : null;
    page = json['page'];
    result = json['result'];
    data.sort((a, b) => a.name.compareTo(b.name));
  }
}

class Data {
  String id;
  String name;
  String city;
  String deal;
  String attachment;
  Data({this.id, this.name, this.city, this.deal, this.attachment});
  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    deal = json['deal'];
    attachment = json['attachment'];
  }
}
