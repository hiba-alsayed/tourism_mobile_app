import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/car/controllers/MainController.dart';

class AllCars extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(63, 168, 160, 1),
        title: Text(
          'Available Cars'.tr,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Get.offNamed('/CarsOffice');
          }
          if (index == 1) {
            Get.offNamed('/BooksCar');
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
        if (controller.CarsLoader == true) {
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
              child: Obx(() {
                if (controller.allcars.isEmpty) {
                  return Center(
                    child: Text(
                      'No cars to show',
                    ),
                  );
                } else {
                  return ListView.separated(
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
                            onTap: () {
                              Get.bottomSheet(Container(
                                padding: EdgeInsets.all(10),
                                width: double.infinity,
                                height: 300,
                                color: Colors.white,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'GetDate',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          var picked = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2100));
                                          if (picked != null) {
                                            controller.selectedate.value =
                                                picked;
                                          }
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 64,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color(0xffECECEC)
                                                  .withOpacity(0.3)),
                                          child: Center(child: Obx(
                                            () {
                                              return Text(
                                                '${controller.selectedate.value.year}-${controller.selectedate.value.month}-${controller.selectedate.value.day}',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        63, 168, 160, 1),
                                                    fontSize: 18),
                                              );
                                            },
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'DropDate',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          var picked = await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2000),
                                              lastDate: DateTime(2100));
                                          if (picked != null) {
                                            controller.selectedate1.value =
                                                picked;
                                          }
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 64,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color(0xffECECEC)
                                                  .withOpacity(0.3)),
                                          child: Center(child: Obx(
                                            () {
                                              return Text(
                                                '${controller.selectedate1.value.year}-${controller.selectedate1.value.month}-${controller.selectedate1.value.day}',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        63, 168, 160, 1),
                                                    fontSize: 18),
                                              );
                                            },
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          print(controller.allcars[index].id);
                                          bool t = await controller.bookcar(
                                              controller.allcars[index].id);
                                          if (t == true) {
                                            Get.snackbar(
                                                'Done', 'Car got booking',
                                                backgroundColor: Colors.green,
                                                colorText: Colors.white);
                                            await controller
                                                .getallReservation();
                                          } else {
                                            Get.snackbar('Error',
                                                'Something went wrong!',
                                                backgroundColor: Colors.red,
                                                colorText: Colors.white);
                                          }
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 64,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color.fromRGBO(
                                                  63, 168, 160, 1)),
                                          child: Center(
                                            child: Text(
                                              'Book',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      )
                                    ]),
                              ));
                            },
                            title: Text(
                              '${controller.allcars[index].tyoe}',
                              style:TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            trailing: Text(
                              '${controller.allcars[index].office}' +
                                  '\n' +
                                  '${controller.allcars[index].priceDay}',
                              style:TextStyle(fontSize: 12),
                            ),
                            leading: Icon(
                              Icons.flag,
                              color: Color.fromRGBO(63, 168, 160, 1),
                            ),
                            subtitle: Text(
                              '${controller.allcars[index].numPerson}',
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
                      itemCount: controller.allcars.length);
                }
              }));
        }
      }),
    );
  }
}
