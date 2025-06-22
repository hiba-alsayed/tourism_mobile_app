class Countries {
  int? id;
  String? name;
  String? details;
  int? popular;
  String? image;

  Countries({this.id, this.name, this.details, this.popular, this.image});

  Countries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    details = json['details'];
    popular = json['popular'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['details'] = this.details;
    data['popular'] = this.popular;
    data['image'] = this.image;
    return data;
  }
}
