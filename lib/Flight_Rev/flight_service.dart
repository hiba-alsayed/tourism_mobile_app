import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants.dart'; // Import the constants file

class FlightService {
  Future<Map<String, dynamic>> reserveSeats(int numberOfPeople) async {
    final response = await http.post(
      Uri.parse('$localhost/api/user/flight/book/7'),
      headers: {
        'Authorization': 'Bearer $token', // Use the token from constants
      },
      body: {'numberOfPeople': numberOfPeople.toString()},
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return responseData;
    } else {
      throw Exception('Failed to reserve seats');
    }
  }
}
