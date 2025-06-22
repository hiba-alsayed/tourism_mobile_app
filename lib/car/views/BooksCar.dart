import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/car/controllers/MainController.dart';

class BooksCar extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(63, 168, 160, 1),
        title: Text(
          'Books'.tr,
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Get.offNamed('/CarsOffice');
          }
          if (index == 2) {
            Get.offNamed('/AllCars');
          }
        },
        selectedItemColor: Color.fromRGBO(63, 168, 160, 1),
        items: [
          BottomNavigationBarItem(
              label: 'Office', icon: Icon(Icons.account_balance_sharp)),
          BottomNavigationBarItem(label: 'Books', icon: Icon(Icons.book)),
          BottomNavigationBarItem(label: 'Cars', icon: Icon(Icons.car_rental)),
        ],
      ),
      body: Obx(() {
        if (controller.ReservationLoader == true) {
          return Center(
            child: CircularProgressIndicator(
              color: Color.fromRGBO(63, 168, 160, 1),
            ),
          );
        } else {
          return ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(4, 4),
                            color: Colors.grey,
                            blurRadius: 10,
                            spreadRadius: 0),
                      ],
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reservation details'.tr,
                        style: TextStyle(
                            fontSize: 24, color: Color(0xff1C3456)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Get date :'.tr,
                            style:TextStyle(
                                fontSize: 16, color: Color(0xff667A8A)),
                          ),
                          Text(
                            '${controller.reservation[index].getDate}',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff1C3456)),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromRGBO(63, 168, 160, 1),
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Drop date :'.tr,
                            style:TextStyle(
                                fontSize: 16, color: Color(0xff667A8A)),
                          ),
                          Text(
                            '${controller.reservation[index].dropDate}',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff1C3456)),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromRGBO(63, 168, 160, 1),
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total price :'.tr,
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff667A8A)),
                          ),
                          Text(
                            '${controller.reservation[index].totalPrice}',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff1C3456)),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: controller.reservation.length);
        }
      }),
    );
  }
}
