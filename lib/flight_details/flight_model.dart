class FlightModel {
  final String? from;
  final String? to;
  final String? date;
  final String? time;
  final String? image;
  final String? company;
  final double? ticketPrice;

  FlightModel({
    this.from,
    this.to,
    this.date,
    this.time,
    this.image,
    this.company,
    this.ticketPrice,
  });

  factory FlightModel.fromJson(Map<String, dynamic> json) {
    return FlightModel(
      from: json['from'],
      to: json['to'],
      date: json['date'],
      time: json['time'],
      image: json['image'],
      company: json['company'],
      ticketPrice: json['ticket_price']?.toDouble(),
    );
  }
}
