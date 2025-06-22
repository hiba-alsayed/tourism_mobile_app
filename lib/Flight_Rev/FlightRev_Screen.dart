import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'flight_rev_controller.dart';

class FlightRev extends StatefulWidget {
  @override
  _FlightRev createState() => _FlightRev();
}

class _FlightRev extends State<FlightRev> {
  final _formKey = GlobalKey<FormState>();
  final FlightRevController _flightRevController = Get.put(FlightRevController());

  int _numberOfPeople = 1;

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await _flightRevController.reserveSeats(_numberOfPeople);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seat Reservation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _numberOfPeople = int.parse(value!);
                },
                decoration: InputDecoration(
                  labelText: 'Number of People',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Confirm Reservation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
