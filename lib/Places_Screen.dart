import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Home_Screen.dart';
class Places extends StatelessWidget {
  const Places({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children:[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0 ,top:45.0),
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 4,
                                  ),
                                ]),
                            child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                                },)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0 ,top:40.0),
                    child: Text(
                      "Enjoy the trip with me!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 330.0,top: 20.0),
                child: Text(
                  "Coast",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('my images/t.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 150.0),
                              child: Opacity(
                                opacity: 0.8,
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 160.0),
                              child: Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0, top: 160.0),
                              child: Text("Maldives",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('my images/hawai.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 150.0),
                              child: Opacity(
                                opacity: 0.8,
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 160.0),
                              child: Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0, top: 160.0),
                              child: Text("Hawaii",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('my images/Australia.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 150.0),
                              child: Opacity(
                                opacity: 0.8,
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 160.0),
                              child: Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0, top: 160.0),
                              child: Text("Australia",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 310.0,top: 20.0),
                child: Text(
                  "Natural",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('my images/South America.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 150.0),
                              child: Opacity(
                                opacity: 0.8,
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 160.0),
                              child: Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0, top: 160.0),
                              child: Text("South America",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('my images/Venezuela.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 150.0),
                              child: Opacity(
                                opacity: 0.8,
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 160.0),
                              child: Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0, top: 160.0),
                              child: Text("Venezuela",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('my images/Portugal.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 150.0),
                              child: Opacity(
                                opacity: 0.8,
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 160.0),
                              child: Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0, top: 160.0),
                              child: Text("Portugal",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 310.0,top: 20.0),
                child: Text(
                  "Desert",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('my images/Saudi Arabia.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 150.0),
                              child: Opacity(
                                opacity: 0.8,
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 160.0),
                              child: Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0, top: 160.0),
                              child: Text("Saudi Arabia",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('my images/Namibia.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 150.0),
                              child: Opacity(
                                opacity: 0.8,
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 160.0),
                              child: Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0, top: 160.0),
                              child: Text("Namibia",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image: AssetImage('my images/South.America.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, top: 150.0),
                              child: Opacity(
                                opacity: 0.8,
                                child: Container(
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 160.0),
                              child: Icon(
                                Icons.pin_drop,
                                size: 18.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0, top: 160.0),
                              child: Text("South America",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ),
                          ],),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
      ),
        ),
      ),
    );
  }
}
