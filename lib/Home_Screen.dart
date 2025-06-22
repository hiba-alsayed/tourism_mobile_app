import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/Places_Screen.dart';
import 'package:untitled/car/views/CarOfficeViewPage.dart';
import 'package:untitled/flight/Flight_Screen.dart';
import 'Flight_Rev/FlightRev_Screen.dart';
import 'log_in/log_in_controller.dart';
import 'package:get/get.dart';
import 'log_in/log_in_controller.dart';
class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKEY = GlobalKey<ScaffoldState>();
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKEY,
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(63, 168, 160, 1),
                    ),
                    accountName: Text("hiba"),
                    accountEmail: Text("hiba@gmail.com")),
                ListTile(
                  title: Text("My Profile"),
                  leading: Icon(
                    Icons.person,
                    color: Color.fromRGBO(63, 168, 160, 1),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Favorite"),
                  leading: Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(63, 168, 160, 1),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Flights"),
                  leading: Icon(
                    Icons.flight,
                    color: Color.fromRGBO(63, 168, 160, 1),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Hotels"),
                  leading: Icon(
                    Icons.hotel,
                    color: Color.fromRGBO(63, 168, 160, 1),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Restaurants"),
                  leading: Icon(
                    Icons.restaurant,
                    color: Color.fromRGBO(63, 168, 160, 1),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(
                    Icons.logout,
                    color: Color.fromRGBO(63, 168, 160, 1),
                  ),
                  onTap: () {
                    authController.logout();
                  },
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 55.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 4,
                                )
                              ]),
                          child: IconButton(
                              icon: Icon(Icons.sort_rounded),
                              onPressed: () =>
                                  _scaffoldKEY.currentState!.openDrawer())),
                    ),
                    Spacer(),
                    Text(
                      "Enjoy the trip with me!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 4,
                            )
                          ]),
                      child: IconButton(
                          onPressed: () {
                            showSearch(
                                context: context, delegate: DataSearch());
                          },
                          icon: Icon(Icons.search)),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Container(
                    height: 260.0,
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
                                padding: const EdgeInsets.only(left: 10.0, top: 210.0),
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
                                padding: const EdgeInsets.only(left: 25.0, top: 220.0),
                                child: Text("Places & Beaches",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ),
                          ],),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Places()));
                          },
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
                                        image: AssetImage('my images/ff.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 210.0),
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
                                padding: const EdgeInsets.only(left: 25.0, top: 220.0),
                                child: Text("Airplanes & flights",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),),
                              ),
                            ],),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FlightsScreen()));
                          },
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
                                        image: AssetImage('my images/h.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 210.0),
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
                                padding: const EdgeInsets.only(left: 25.0, top: 220.0),
                                child: Text("Hotels",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),),
                              ),
                            ],),
                          onTap: () {},
                        ),
                        SizedBox(width: 20.0),
                        InkWell(
                          child: Stack(
                            children: [
                              Container(
                                width: 200.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage('my images/c.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 210.0),
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
                                padding: const EdgeInsets.only(left: 25.0, top: 220.0),
                                child: Text("Cars",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),),
                              ),
                            ],),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CarsOffices()));
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Text("Most popular countries",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(right: 10.0),
                          height: 260.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage('my images/t.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(right: 10.0),
                          height: 260.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage('my images/t.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(right: 10.0),
                          height: 260.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage('my images/t.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        onTap: () {},
                      ),

                    ],
                  ),
                ),
              ],
            ),

          ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("");
  }
}
