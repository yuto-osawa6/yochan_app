import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yochan/model/task.dart';
import 'package:yochan/ui/page/home/home.dart';
import 'package:yochan/view_model/task_view_model.dart';
import 'package:yochan/youchan.dart';



void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MVVM',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   backgroundColor: Colors.black45
      // ),
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      theme: ThemeData.from(
        colorScheme:ColorScheme.light(
          primary:Colors.red,
          surface:Color.fromARGB(255, 176, 57, 48),
          background:Colors.red,
          ),
        // textTheme: 何かしらのTextTheme,
      ),
      home: YouChanWidget(),
    );
  }
}


