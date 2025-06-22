class Reservation {
  String? getDate;
  String? dropDate;
  int? totalPrice;
  String? car;

  Reservation({this.getDate, this.dropDate, this.totalPrice, this.car});

  Reservation.fromJson(Map<String, dynamic> json) {
    getDate = json['get_date'];
    dropDate = json['drop_date'];
    totalPrice = json['total_price'];
    car = json['car'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['get_date'] = this.getDate;
    data['drop_date'] = this.dropDate;
    data['total_price'] = this.totalPrice;
    data['car'] = this.car;
    return data;
  }
}
