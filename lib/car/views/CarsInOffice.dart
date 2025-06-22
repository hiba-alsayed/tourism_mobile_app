
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/car/controllers/MainController.dart';

class CarsInOffice extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(63, 168, 160, 1),
        title: Text(
          'Cars'.tr,
          style:TextStyle(),
        ),
        centerTitle: true,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          height: double.infinity,
          child: Obx(
            () {
              if (controller.Loader.value == true) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.separated(
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
                          title: Text(
                            '${controller.officeCars[index].type}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          trailing: controller.officeCars[index].isRental == 1
                              ? Text(
                                  'Rented' +
                                      '\n' +
                                      '${controller.officeCars[index].priceDay}',
                                  style: TextStyle(fontSize: 12),
                                )
                              : Text(
                                  'Not rent' +
                                      '\n' +
                                      '${controller.officeCars[index].priceDay}',
                                  style: TextStyle(fontSize: 12),
                                ),
                          leading: Icon(
                            Icons.flag,
                            color: Color.fromRGBO(63, 168, 160, 1),
                          ),
                          subtitle: Text(
                            '${controller.officeCars[index].numberPerson}',
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
                    itemCount: controller.officeCars.length);
              }
            },
          )),
    );
  }
}
