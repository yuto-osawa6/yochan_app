import 'dart:convert';

import 'package:dio/dio.dart';

class ApiClientCreateUser {
Future<dynamic> fetchApiCreateUser() async {
  final dio = Dio();
  // dio.options.baseUrl = 'https://www.xx.com/api';
  try{
    final response = await dio.get('https://www.gaitameonline.com/rateaj/getrate');
    // final response = await Dio().get(
    //   'https://www.gaitameonline.com/rateaj/getrate',
    // );
    // print(response.data);
    // print("afea");
    if (response.statusCode == 200) {
      // print(response.data);
      var a = jsonDecode(response.data);
      print("ue");
      print(a["quotes"].firstWhere((item) => item["currencyPairCode"] == "USDJPY"));
      print(a["quotes"].firstWhere((item) => item["currencyPairCode"] == "USDJPY")["open"]);
      // return UserModel.fromJson(response.data);
      return a["quotes"].firstWhere((item) => item["currencyPairCode"] == "USDJPY")["open"];
    } else {

    }
    }catch(e){

    }
  }
}