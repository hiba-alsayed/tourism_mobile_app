import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:untitled/flight_details/flight_model.dart';


class FlightController extends GetxController {
  var flightDetails = Rx<FlightModel>(FlightModel());

  Future<void> fetchFlightDetails() async {
    try {
      final response = await http.get(Uri.parse('YOUR_API_URL'));
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        flightDetails.value = FlightModel.fromJson(responseData);
      } else {
        throw Exception('Failed to load flight details');
      }
    } catch (e) {
      // Handle error
    }
  }
}
