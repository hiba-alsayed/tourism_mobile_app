import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'flight_service.dart';

class FlightRevController extends GetxController {
  final FlightService _flightService = FlightService();

  Future<void> reserveSeats(int numberOfPeople) async {
    try {
      final response = await _flightService.reserveSeats(numberOfPeople);
      final message = response['message'];
      final data = response['data'];

      final int numPerson = data['num_person'];
      final double totalPrice = data['total_price'] / 100; // Convert to dollars

      Get.snackbar('Success', message);
      Get.dialog(Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Reservation Details'),
            Text('Number of People: $numPerson'),
            Text('Total Price: \$${totalPrice.toStringAsFixed(2)}'),
            ElevatedButton(
              onPressed: () {
                Get.back(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        ),
      ));
    } catch (e) {
      Get.snackbar('Error', 'Failed to reserve seats');
    }
  }
}
