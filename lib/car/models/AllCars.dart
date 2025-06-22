class ACars {
  int? id;
  String? tyoe;
  int? numPerson;
  int? priceDay;
  String? image;
  String? office;

  ACars(
      {this.id,
      this.tyoe,
      this.numPerson,
      this.priceDay,
      this.image,
      this.office});

  ACars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tyoe = json['tyoe'];
    numPerson = json['num_person'];
    priceDay = json['price_day'];
    image = json['image'];
    office = json['office'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tyoe'] = this.tyoe;
    data['num_person'] = this.numPerson;
    data['price_day'] = this.priceDay;
    data['image'] = this.image;
    data['office'] = this.office;
    return data;
  }
}
