import 'package:http/http.dart' as http;

import '../constants.dart';

class ApiService {
  //static const String baseUrl = 'YOUR_API_BASE_URL';

  static Future<http.Response> fetchFlights() async {
    final response = await http.get(Uri.parse('$localhost/api/flight/all'));
    return response;
  }
}
