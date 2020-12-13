import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
import 'package:service/models/booking_model.dart';

class ApiManager{
var dio = new Dio();
static final String basePath="http://192.168.1.100:3100";

Future bookingService(BookingModel value) async {
  try {
  Response response = await dio.post("$basePath/service/task",data:value.toJson());
  if(response.data != null){
    print('Response :  ------------ ${response.data}');
  } else {
    print('============== Error');
  }
  } catch(err){
    print('--------------------- Error occures $err');
  }
}

}
