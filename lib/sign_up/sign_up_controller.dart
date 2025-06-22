import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/Home_Screen.dart';
import 'package:untitled/sign_up/sign_uo_model.dart';
import '../constants.dart';

class SignUpController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> signUp(UserModel user) async {
    try {
      isLoading.value = true;

      final response = await http.post(
        Uri.parse('$localhost/api/user/register'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(user.toJson()), // Convert and encode UserModel to JSON
      );

      if (response.statusCode == 201) {
        // Successful response handling
        Get.snackbar('Welcome!','');
        Get.to(HomeScreen());
      } else {
        // Handle error
        print('API Error: ${response.statusCode}');
        print('API Response: ${response.body}');
        // You can show an error message to the user using Get.snackbar or other methods
      }
    } catch (e) {
      // Handle exception
      print('Exception: $e');
      // You can show an error message to the user using Get.snackbar or other methods
    } finally {
      isLoading.value = false;
    }
  }
}