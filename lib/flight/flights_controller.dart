import 'dart:convert';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'api_service.dart';
import 'flight_model.dart';
import 'package:get/get.dart';


class FlightsController extends GetxController {
  final flights = <Flight>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchFlights();
  }

  Future<void> fetchFlights() async {
    final response = await ApiService.fetchFlights();
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      flights.value = data.map((item) => Flight(
        id: item['id'],
        from: item['from'],
        to: item['to'],
        date: item['date'],
        time: item['time'],
        image: item['image'],
        company: item['company'],
        ticketPrice: item['ticket_price'],
      )).toList();
    } else {
      // Handle error
    }
  }
}
