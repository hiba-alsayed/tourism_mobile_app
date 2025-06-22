import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/sign_up/SignUp_Screen.dart';
import 'log_in_controller.dart';
import 'login_model.dart';
import 'package:get/get.dart';
class login extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('my images/pic1.jpg'),
                      colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.8),
                        BlendMode.modulate,
                      ),
                      fit: BoxFit.fill)),
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.only(start: 20.0, top: 150.0),
                child: Text(
                  "Make your vacation more enjoyable!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(2, 4),
                            blurRadius: 10),
                      ]),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 280.0),
            child: SingleChildScrollView(
              child: Stack(children: [
                Container(
                  width: double.infinity,
                  height: 470.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 30.0, top: 35.0),
                  child: Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 30.0, top: 140.0, end: 30.0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color.fromRGBO(63, 168, 160, 1),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an email address';
                      } else if (!value.contains('@') || !value.contains('.com')) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 30.0, top: 210.0, end: 30.0),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.vpn_key,
                        color: Color.fromRGBO(63, 168, 160, 1),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      } else if (value.length < 8) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 92.0, top: 350.0),
                  child: MaterialButton(
                    onPressed: loginController.isLoading.value
                        ? null
                        : () {
                      // Create a UserModel object using the controllers' values
                      LoginModel user = LoginModel(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      loginController.login(user);
                    },
                    child: loginController.isLoading.value
                        ? CircularProgressIndicator() // Show CircularProgressIndicator when loading
                        : Text(
                      'login',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    color: Color.fromRGBO(63, 168, 160, 1),
                    splashColor: Color.fromRGBO(59, 110, 124, 1),
                    minWidth: 180.0,
                    height: 46.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(157.0)),
                    elevation: 10.0,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 65.0, top: 400.0),
                  child: Row(
                    children: [
                      Text(
                        'Don\'t have an account ?',
                        style: TextStyle(color: Colors.grey,
                          fontSize: 12,),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            color: Color.fromRGBO(63, 168, 160, 1),
                            decoration: TextDecoration.underline,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
