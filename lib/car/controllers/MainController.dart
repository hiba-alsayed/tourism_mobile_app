import 'dart:convert';
import 'package:get/get.dart';
import 'package:untitled/car/models/AllCars.dart';
import 'package:untitled/car/models/Cars.dart';
import 'package:untitled/car/models/Reservation.dart';
import 'package:untitled/constants.dart';
import '../models/CarsOffice.dart';
import '../models/Countries.dart';
import 'package:http/http.dart' as http;

class MainController extends GetxController {
  RxBool CLoading = true.obs;
  var ip = '192.168.1.166';
  var token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiY2NiYjZjNzE2NDE2Njg1OTIyODA4MjVlNDQ5YzA1ZWFlMTFhYmM4YzJkNjg1OWUyNDFjNWZiZmZkZDYyY2QwOGZjNzliMDRmYmM1ZTFiZjUiLCJpYXQiOjE2OTE4MzQ2MTUuNzkwOTczLCJuYmYiOjE2OTE4MzQ2MTUuNzkwOTc1LCJleHAiOjE3MjM0NTcwMTUuNTk5OTI5LCJzdWIiOiIxIiwic2NvcGVzIjpbInVzZXIiXX0.l5lWaFJ00svlPKaiHYfsd9G-gnENp1tzjq53pObZj0W6ZI3FmDAB2f80VKtV4oQssVSBaGVlo2pVqtaHUavuCb4jlQGZgs5bufkj_PIG_c5G6ywa8P4ieC4wfgTtLLjaj_xQT6wLXJN1huX6ffDWp-zEofds43FzC7meu1mcjKKWUY1LroksFcYFbpMZKnzzFaQGWPorwtpFh5YTk4Oc2OI8t7tE1hd1ce3TzH8rUpzhnTIz8SRBhtIABH1Ok4ew75Dhr8_EN_AywaWdF3A5DBjZ0phA7x72dLfixZZ3se3Bd5MszmJN85abWoGUVCcZDqN0hoBiYziUL8K3s88pekDSfPGmEC6z_XrFqRz83_9UXiT4aylS7JR6PV91ZfKoUBEjpaPAhARhFXQ9oKid_YgHK1dKxNjHVqL6_tYRU818jX3s7Wcj0dN1y9uaECn8nhxArUBL5xMxWxJxl_xETKb-kz_u-KekCpHnv0SIwqN2JMZ6AnHcubSX9u0ue-kgpTqVd44i2tBMYdcznK3FRH3Ln8EhXZ5vIpnoHlS824AEfkTIhyjY7hB__cDmrn2n0JiWCSDElTSFcaGh-ZblLCNDdXCnHpxxgZSc-66W5qll3x2lNxygFOAbwQr7pqG3mZ1R39jzL6n6Y78opfVnPa4uDMTdiTX7tv0ehpgMMWw';
  //GetCountries================================================================
  RxList<Countries> countries = <Countries>[].obs;

  GetCountries() async {
    countries = <Countries>[].obs;
    Countries item = Countries(id: 10, name: 'All');
    String url = 'http://$localhost:8000/api/countries/all';
    try {
      CLoading(true);
      var response = await http
          .get(Uri.parse(url), headers: {'Authorization': 'Bearer $token'});
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        countries.add(item);
        for (int i = 0; i < responsebody.length; i++) {
          countries.add(Countries.fromJson(responsebody[i]));
        }
        print(responsebody);
        print(countries.length);
      } else {
        print(response.body);
      }
    } finally {
      CLoading(false);
    }
  }

//GetOffices================================================================
  RxList<CarsOffice> offices = <CarsOffice>[].obs;

  GetAllOffices() async {
    offices = <CarsOffice>[].obs;
    String url = 'http://$localhost:8000/api/office/all';
    try {
      CLoading(true);
      var response = await http
          .get(Uri.parse(url), headers: {'Authorization': 'Bearer $token'});
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);

        for (int i = 0; i < responsebody.length; i++) {
          offices.add(CarsOffice.fromJson(responsebody[i]));
        }
        print(responsebody);
        print(offices.length);
      } else {
        print(response.body);
      }
    } finally {
      CLoading(false);
    }
  }

//GetOfficesByCountry================================================================
  GetAllOfficesinCountry(var id) async {
    offices = <CarsOffice>[].obs;
    String url = 'http://$localhost:8000/api/office/in/country/$id';
    try {
      CLoading(true);
      var response = await http
          .get(Uri.parse(url), headers: {'Authorization': 'Bearer $token'});
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);

        for (int i = 0; i < responsebody.length; i++) {
          offices.add(CarsOffice.fromJson(responsebody[i]));
        }
        print(responsebody);
        print(offices.length);
      } else {
        print(response.body);
      }
    } finally {
      CLoading(false);
    }
  }

//Getcarinoffice================================================================
  RxBool Loader = true.obs;
  RxList<Cars> officeCars = <Cars>[].obs;
  Getcarinoffice(var id) async {
    officeCars = <Cars>[].obs;
    String url = 'http://$localhost:8000/api/cars/in/office/$id';
    try {
      Loader(true);
      var response = await http
          .get(Uri.parse(url), headers: {'Authorization': 'Bearer $token'});
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        for (int i = 0; i < responsebody.length; i++) {
          officeCars.add(Cars.fromJson(responsebody[i]));
        }
        print(responsebody);
      } else {
        print(response.body);
      }
    } finally {
      Loader(false);
    }
  }

  //GetAllcar================================================================
  RxList<ACars> allcars = <ACars>[].obs;
  RxBool CarsLoader = true.obs;
  getallcars() async {
    allcars = <ACars>[].obs;
    String url = 'http://$localhost:8000/api/cars/all';
    try {
      CarsLoader(true);
      var response = await http
          .get(Uri.parse(url), headers: {'Authorization': 'Bearer $token'});
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        for (int i = 0; i < responsebody.length; i++) {
          allcars.add(ACars.fromJson(responsebody[i]));
        }
        print(responsebody);
        print(allcars.length);
      }
    } finally {
      CarsLoader(false);
    }
  }

//GetAllcarInOffice================================================================
  RxList<Cars> carsinoffice = <Cars>[].obs;
  RxBool CarsInOfficeLoader = true.obs;
  getallcarsInOffice(var id) async {
    carsinoffice = <Cars>[].obs;
    try {
      String url = 'http://$localhost:8000/api/cars/in/office/$id';

      CarsInOfficeLoader(true);
      var response = await http
          .get(Uri.parse(url), headers: {'Authorization': 'Bearer $token'});
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        for (int i = 0; i < responsebody.length; i++) {
          carsinoffice.add(Cars.fromJson(responsebody[i]));
        }
        print(responsebody);
        print(carsinoffice.length);
      } else {
        print(response.body);
      }
    } finally {
      CarsInOfficeLoader(false);
    }
  }

//GetAllReservation================================================================
  RxList<Reservation> reservation = <Reservation>[].obs;
  RxBool ReservationLoader = true.obs;
  getallReservation() async {
    reservation = <Reservation>[].obs;
    String url = 'http://$localhost:8000/api/user/car/reserv/all';

    try {
      ReservationLoader(true);
      var response = await http
          .get(Uri.parse(url), headers: {'Authorization': 'Bearer $token'});
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        for (int i = 0; i < responsebody.length; i++) {
          reservation.add(Reservation.fromJson(responsebody[i]));
        }
        print(responsebody);
        print(reservation.length);
      } else {
        print(response.body);
      }
    } finally {
      ReservationLoader(false);
    }
  }

//Reservation================================================================
  Rx<DateTime> selectedate = DateTime.now().obs;
  Rx<DateTime> selectedate1 = DateTime.now().obs;

  Future<bool> bookcar(var id) async {
    String url = 'http://$localhost:8000/api/user/car/book/$id';
    var response = await http.post(Uri.parse(url), headers: {
      'Authorization': 'Bearer $token',
    }, body: {
      'get_date':
          '${selectedate.value.year}-${selectedate.value.month}-${selectedate.value.day}',
      'drop_date':
          '${selectedate1.value.year}-${selectedate1.value.month}-${selectedate1.value.day}'
    });
    if (response.statusCode == 200) {
      print(response.body);
      return true;
    } else {
      print(response.body);
      return false;
    }
  }

  @override
  void onInit() async {
    await GetCountries();
    await GetAllOffices();
    await getallcars();
    await getallReservation();
    super.onInit();
  }
}
