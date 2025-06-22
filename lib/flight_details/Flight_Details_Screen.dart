import 'package:flutter/material.dart';
import 'package:untitled/Flight_Rev/FlightRev_Screen.dart';
import 'package:untitled/flight/flight_model.dart';
import 'flight_model.dart';

class FlightDetailsScreen extends StatelessWidget {
  final Flight flight;

  FlightDetailsScreen({required this.flight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flight Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('From: ${flight.from}'),
            Text('To: ${flight.to}'),
            Text('Date: ${flight.date}'),
            Text('Time: ${flight.time}'),
            Text('Ticket Price: \$${flight.ticketPrice.toStringAsFixed(3)}'),
            // Add more details as needed
            MaterialButton(
              onPressed: () {  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FlightRev()),
              );},
              child: Text(
                'Book now!',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              color: Color.fromRGBO(63, 168, 160, 1),
              splashColor: Color.fromRGBO(59, 110, 124, 1),
              minWidth: 270.0,
              height: 56.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(157.0)),
              elevation: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
