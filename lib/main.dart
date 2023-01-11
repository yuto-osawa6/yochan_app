import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yochan/model/task.dart';
import 'package:yochan/theme/youchan_theme.dart';
import 'package:yochan/ui/page/home/home.dart';
import 'package:yochan/view_model/task_view_model.dart';
import 'package:yochan/youchan.dart';



void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MVVM',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   backgroundColor: Colors.black45
      // ),
      // theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      theme: ThemeData.dark(),
      home: YouChanWidget(),
    );
  }
}


