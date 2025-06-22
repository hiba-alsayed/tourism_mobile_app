import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/flight/Flight_Screen.dart';
import 'package:untitled/log_in/Login_Screen.dart';
import 'package:untitled/Places_Screen.dart';
import 'package:untitled/sign_up/sign_up_controller.dart';
import 'Flight_Rev/flight_rev_controller.dart';
import 'GetStarted_Screen.dart';
import 'Home_Screen.dart';
import 'car/controllers/MainController.dart';
import 'car/views/AllCars.dart';
import 'car/views/BooksCar.dart';
import 'car/views/CarsInOffice.dart';
import 'car/views/CarOfficeViewPage.dart';
import 'flight_details/Flight_Details_Screen.dart';
import 'log_in/log_in_controller.dart';
import 'sign_up/SignUp_Screen.dart';
import 'package:untitled/Flight_Rev/FlightRev_Screen.dart';
import 'package:get/get.dart';
import 'package:untitled/car/views/CarOfficeViewPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    Get.put(AuthController());
    Get.put(LoginController());
    Get.put(MainController());
    Get.put(FlightRevController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Capriola'),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SignUp()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/login', page: () => login()),
        GetPage(name: '/flight', page: () => FlightRev()),
        GetPage(name: '/CarsOffice', page: () => CarsOffices(),),
        GetPage(name: '/BooksCar', page: () => BooksCar(),),
        GetPage(name: '/AllCars', page: () => AllCars(),),
        GetPage(name: '/CarsInOffice', page: () => CarsInOffice(),),
        GetPage(name: '/flight', page: () => FlightsScreen(),),
        GetPage(name: '/flight', page: () => FlightRev(),),
      ],
    );
  }
}
