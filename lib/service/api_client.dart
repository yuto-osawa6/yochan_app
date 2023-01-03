import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:yochan/model/task.dart';
import 'package:http/http.dart' as http;


// class ApiClientTasks {
// Future<List<Task>?> fetchApiTasks() async {
//   final dio = Dio();
//   // const url = "http://localhost:8080/";
//   // try {
//     // final response = await http.get(Uri.parse(
//     //       'http://localhost:8080/tasks'));
//     // const url = 'https://api.sampleapis.com/coffee/hot';
//     final response = await dio.get('http://localhost:8080/tasks');
//     if (response.statusCode == 200) {
//       // final body = jsonDecode(utf8.decode(response.body.runes.toList()))["data"];
//       // print(body);
//       // print(response.data["data"]);

//       final datas = response.data["data"] as List<dynamic>;
//       // print(response.data);
//       // print("aa");
//       // final list = body.map((e) => Task.fromJson(e)).toList();
//       final list = datas.map((e) => Task.fromJson(e)).toList();

//       // print(list);
//       return list;
//     } else {
//     }
//   // } catch (e) {
//   //   print(e.toString());
//   //   // return null;
//   // }
//   // return null;
//   }
// }