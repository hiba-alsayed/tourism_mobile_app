class CarsOffice {
  int? id;
  String? name;
  int? phone;
  String? country;

  CarsOffice({this.id, this.name, this.phone, this.country});

  CarsOffice.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['country'] = this.country;
    return data;
  }
}
