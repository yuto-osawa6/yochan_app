// import 'package:flutter/material.dart';
// import 'package:yochan/ui/common/footer/footer.dart';
// import 'package:yochan/ui/common/header/header.dart';
// import 'package:yochan/ui/page/calendar/calendar.dart';
// import 'package:yochan/ui/page/groupfrends/groupfrends.dart';
// import 'package:yochan/ui/page/home/home.dart';
// import 'package:yochan/ui/page/search/search.dart';
// import 'package:yochan/ui/page/talk/talk.dart';
// import 'package:yochan/ui/page/timeline/timeline.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// void main(){
//   runApp(MyWidget());
// }

// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: [
//         const Locale('ja', ''), //日本語
//         const Locale('en', ''), //英語
//       ],
//       title: "",
//       theme: ThemeData(
//         primaryColor:Colors.blue
//       ),
//       home:  MyHomePage(title:"FlutterApp2"),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyHomePage> {
//   var _selectIndex = 0;
//   var _pages = <Widget>[
//     Home(),
//     GroupFrends(),
//     Talk(),
//     TimeLine(),
//     Calendar(),
//   ];
//     void _onTapItem(int index) {
//     setState(() {
//       _selectIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: Header(),
//       body: _pages[_selectIndex],
//       // body: Center(
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: <Widget>[
//       //       Text(
//       //         AppLocalizations.of(context)!.hello("kazutxt"),
//       //       ),
//       //       Text(
//       //         AppLocalizations.of(context)!.allow,
//       //       ),
//       //       Text(
//       //         AppLocalizations.of(context)!.deny,
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       bottomNavigationBar: Footer(now_page:_selectIndex,onTapItem: _onTapItem),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yochan/model/task.dart';
import 'package:yochan/ui/page/home/home.dart';
import 'package:yochan/view_model/task_view_model.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // print("aa");
  // final UserViewModel userViewModel = UserViewModel();
  //  List<Tasks> users = [];
  // Future getUsers() async {
  //   users = (await userViewModel.fetchUsers())!;
  // }
  @override
  // final UserViewModel userViewModel = UserViewModel();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MVVM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final countProvider = StateProvider((ref) => 0);

// void main() {
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }


// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('First Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text(
//                   'ボタンを押した回数',
//                 ),
//                 Text(
//                   '${ref.watch(countProvider)}',
//                   style: Theme.of(context).textTheme.headline4,
//                 ),
//               ],
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push<void>(
//                   MaterialPageRoute(
//                     builder: (context) => const MySecondPage(),
//                   ),
//                 );
//               },
//               child: const Text('次のページ'),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           ref.read(countProvider.notifier).state++;
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// class MySecondPage extends ConsumerWidget {
//   const MySecondPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Text('Second Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text(
//                   'ボタンを押した回数',
//                 ),
//                 Text(
//                   '${ref.watch(countProvider)}',
//                   style: Theme.of(context).textTheme.headline4,
//                 ),
//               ],
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('前のページ'),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           ref.read(countProvider.notifier).state++;
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }