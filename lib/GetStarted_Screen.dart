import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/sign_up/SignUp_Screen.dart';
class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('my images/pic1.jpg'), fit: BoxFit.fill)),
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.only(start: 20.0, top: 245.0),
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
          padding: const EdgeInsetsDirectional.only(start: 52.0, top: 600.0),
          child: MaterialButton(
            onPressed: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),
            );},
            child: Text(
              'Let’s Start',
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
        )
      ]),
    );
  }
}
