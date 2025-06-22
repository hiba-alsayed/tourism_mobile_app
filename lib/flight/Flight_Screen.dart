import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/flight_details/Flight_Details_Screen.dart';
import 'flight_model.dart';
import 'flights_controller.dart';

class FlightsScreen extends StatelessWidget {
  final FlightsController controller = Get.put(FlightsController());
  void _goToFlightDetails(Flight flight) {
    Get.to(FlightDetailsScreen(flight: flight));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flights'),
      ),
      body: Obx(() {
        if (controller.flights.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: controller.flights.length,
          itemBuilder: (context, index) {
            Flight flight = controller.flights[index];
            return ListTile(
              title: Text('${flight.from} to ${flight.to}'),
              subtitle: Text('${flight.date} ${flight.time}'),
              trailing: Text('\$${flight.ticketPrice.toStringAsFixed(3)}'),
              onTap: () => _goToFlightDetails(flight),
              // You can also add an Image widget here for flight image
            );
          },
        );
      }),
    );
  }
}