import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:untitled/log_in/Login_Screen.dart';
import '../Home_Screen.dart';
import '../constants.dart';
import 'login_model.dart'; // Import the LoginModel class

class LoginController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> login(LoginModel user) async {
    try {
      isLoading.value = true;
      final response = await http.post(
        Uri.parse('$localhost/api/user/login'), // Replace with your API endpoint
        body: user.toJson(),

      );

      if (response.statusCode == 200) {
        token = jsonDecode(response.body)['token'];
        print(token);
        // Successful login response handling
        Get.to(HomeScreen());
        Get.snackbar('Success', 'Login successful');
      } else {
        // Error handling
        Get.snackbar('Error', 'Login failed');
      }
    } catch (error) {
      // Exception handling
      Get.snackbar('Error', 'An error occurred');
      print(error.toString());

    }
    finally {
      isLoading.value = false;
    }
  }
}
class AuthController extends GetxController {
  // Implement your authentication and logout logic here
  // Include functions like login, logout, check if the user is authenticated, etc.

    void logout() {
      // Perform any necessary cleanup or API calls related to logout
      // For example, clearing user data from local storage or sending a logout request to the server

      // After performing the logout actions, navigate to the login screen
      Get.offAllNamed('/login'); // Replace with your login route
      Get.snackbar('Logged Out', 'You have been logged out');
    }

}


