
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/car/controllers/MainController.dart';


class CarsOffices extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(63, 168, 160, 1),
        title: Text(
          'Offices'.tr,
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Get.offNamed('/BooksCar');
          }
          if (index == 2) {
            Get.offNamed('/AllCars');
          }
        },
        selectedItemColor: Color.fromRGBO(63, 168, 160, 1),
        items: [
          BottomNavigationBarItem(
              label: 'Office'.tr, icon: Icon(Icons.account_balance_sharp)),
          BottomNavigationBarItem(label: 'Books'.tr, icon: Icon(Icons.book)),
          BottomNavigationBarItem(label: 'Cars', icon: Icon(Icons.car_rental)),
        ],
      ),
      body: Obx(() {
        if (controller.CLoading == true) {
          return Center(
            child: CircularProgressIndicator(
              color: Color.fromRGBO(63, 168, 160, 1),
            ),
          );
        } else {
          return Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 10,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.countries.length,
                        itemBuilder: (context, index) {
                          return FilterChip(
                            label: Text('${controller.countries[index].name}'),
                            onSelected: (value) async {
                              print(controller.countries[index].id);
                              if (controller.countries[index].id == 10) {
                                await controller.GetAllOffices();
                              } else {
                                await controller.GetAllOfficesinCountry(
                                    controller.countries[index].id);
                              }
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(() {
                      if (controller.offices.isEmpty) {
                        return Center(
                          child: Text(
                            'No Offices in this country',
                            style: TextStyle(),
                          ),
                        );
                      } else {
                        return ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(2, 2),
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 0,
                                          blurRadius: 5)
                                    ],
                                    borderRadius: BorderRadius.circular(15)),
                                child: ListTile(
                                  onTap: () async {
                                    await controller.Getcarinoffice(
                                        controller.offices[index].id);
                                    Get.toNamed('/CarsInOffice');
                                  },
                                  title: Text(
                                    '${controller.offices[index].name}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  trailing: Text(
                                    '${controller.offices[index].country}',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  leading: Icon(
                                    Icons.flag,
                                    color: Color.fromRGBO(63, 168, 160, 1),
                                  ),
                                  subtitle: Text(
                                    '${controller.offices[index].phone}',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: controller.offices.length);
                      }
                    })
                  ],
                ),
              ));
        }
      }),
    );
  }
}
