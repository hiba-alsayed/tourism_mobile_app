class Cars {
  int? id;
  String? type;
  int? numberPerson;
  int? priceDay;
  int? isRental;
  String? image;

  Cars(
      {this.id,
      this.type,
      this.numberPerson,
      this.priceDay,
      this.isRental,
      this.image});

  Cars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    numberPerson = json['number person'];
    priceDay = json['price_day'];
    isRental = json['isRental'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['number person'] = this.numberPerson;
    data['price_day'] = this.priceDay;
    data['isRental'] = this.isRental;
    data['image'] = this.image;
    return data;
  }
}
